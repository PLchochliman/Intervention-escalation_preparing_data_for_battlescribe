from uuid import uuid4
import excel_loader_from_file
#uuid do importowania
Entry_type = []
Cost_types = {"koszt":"pts",
               "Punkty walki wywiadowczej":"Punkty walki wywiadowczej"}

"""

    <profile id="39e8-2c8a-e9ef-9030" name="Ciężkie działo laserowe(pełna moc)" publicationId="1df9-7d0b-7797-72fe" hidden="false" typeId="7c77-8b23-7b1b-1a2a" typeName="Broń strzelecka">
      <characteristics>
        <characteristic name="Szybkostrzelność" typeId="ea71-7914-af0e-b25c">1</characteristic>
        <characteristic name="Zasięg" typeId="9bc3-d98e-5f29-4db6">9</characteristic>
        <characteristic name="Obrażenia" typeId="efab-1f23-eb01-c935">3</characteristic>
        <characteristic name="Penetracja" typeId="166b-e0bd-eab7-463d">5 + D10</characteristic>
        <characteristic name="Zasady specjalne" typeId="cf8b-1465-4f9b-f728">ciężki</characteristic>
      </characteristics>
    </profile>
    
  <costTypes>
    <costType id="7921-831d-f13f-9469" name="ptk" defaultCostLimit="-1.0" hidden="false"/>
    <costType id="9f0c-d0a4-ea60-16c3" name="Punkty walki wywiadowczej" defaultCostLimit="-1.0" hidden="false"/>
    <costType id="eb58-26dd-90a1-c631" name="Punkty dowodzenia" defaultCostLimit="-1.0" hidden="false"/>
  </costTypes>
  <profileTypes>
    <profileType id="ca7e-8465-ce27-9076" name="Piechota bez osłony">
      <characteristicTypes>
        <characteristicType id="7535-c935-1a20-689d" name="Liczebność"/>
        <characteristicType id="cdd0-8e6c-be69-16b2" name="Celność"/>
        <characteristicType id="5cfb-b67a-e89d-70b4" name="Unik"/>
        <characteristicType id="6d86-ab2d-5fe3-1a21" name="Walka w zwarciu"/>
        <characteristicType id="8ffa-c3bd-30a9-83ff" name="Żywotność"/>
        <characteristicType id="b464-b63d-e84e-2c6f" name="Pancerz"/>
        <characteristicType id="4b8f-e171-e0ca-9322" name="Inicjatywa"/>
        <characteristicType id="049d-6576-b50b-6499" name="Uzbrojenie"/>
      </characteristicTypes>
    </profileType>
    <profileType id="f778-6de7-6624-69e8" name="Pojazd">
      <characteristicTypes>
        <characteristicType id="91da-adbc-34aa-6639" name="Celność"/>
        <characteristicType id="4779-afb2-d262-ba54" name="Unik"/>
        <characteristicType id="f17c-71dd-2ad0-47ba" name="Pancerz"/>
        <characteristicType id="a678-ae2e-56cf-aef6" name="Osłona"/>
        <characteristicType id="10f0-b631-8067-e744" name="Inicjatywa"/>
        <characteristicType id="0c4b-c7d2-abfb-32e3" name="Uzbrojenie"/>
        <characteristicType id="afed-2b7a-c84f-e6c9" name="Zasady specjalne"/>
      </characteristicTypes>
    </profileType>
"""


types_to_read = {
    "jednostka": [["nazwa",
                "liczebność",
                "celność",
                "unik",
                "walka w zwarciu",
                "żywotność",
                "pancerz",
                "osłona",
                "inicjatywa",
                "punkty montażu",
                "uzbrojenie",
                "opcje",
                "zasady specjalne",
                "punkty walki wywiadowczej",
                "koszt",]],
    "broń": [["nazwa",
            "Sz",
            "Z",
            "O",
            "P",
            "specjalne",
            "koszt"],
             ["nazwa",
            "A",
            "Sz",
            "O",
            "P",
            "specjalne",
            "koszt"]],
    "zasady":[
        ["nazwa",
         "koszt",],
        ["nazwa",
         "efekt",
         "koszt",],
        ["nazwa",
         "efekt",
         "punkty walki wywiadowczej",]
    ],

    "rozkazy": [["nazwa",
                "koszt punktów dowodzenia",
                "efekt",]],
    "formacje": [["nazwa",
                "Dowódca",
                "wymagania",
                "Opcjonalnie",
                "szerokie wybory",
                "Zasady",
                "Punkty walki wywiadowczej",
                "Zabierz",
                "Daj",
                "koszt",]]
}


# najpierw sprawdzić ile tam tego w tym jest

#potem na tej zasadzie sprawdzić czy len odpowiada.

#i teraz wczytujemy!!!

#możemy wiedzieć czy tam są jednostki, czy tam jest coś innego
#każdą jednostką musimy zrobić na entry - ponieważ wtedy możemy zrobić w pełnej okazałości - za wyjątkiem pancernych i półpancernych i lekkich panernych...

#jako seleciton potrzeba każde co ma cokolwiek w opcjach.
# a potem jako sekcje... i może dodawać i odejmować boltery? popróbować coś z tym?


data_loaded = [[]]
record = []
multiple_entry_type = []

potential_selection_entry = ""
# TODO Jednostki
units_as_dicts = {}

data_loaded_to_BS = {}

#units_loaded = excel_loader_from_file.units
#rules_in_excel = excel_loader_from_file.rules
row=1
column=0

class LoadData:

    def __init__(self, workbook_rules, workbook_units, workbook_guns, workbook_formations, types_of_records):
        self.workbook_rules = workbook_rules
        self.workbook_guns = workbook_guns
        self.workbook_units = workbook_units
        self.workbook_formations = workbook_formations
        self.loaded_data = {}
        self.types_of_records = types_of_records


    def load_all_data(self):
        self.loaded_data = {}
        self.load_to_data_rules_and_orders(self.workbook_rules, ["rozkazy", "zasady"],[])

    def flatten_multiple_types(self, keys, main_dictionary):
        flatted_data = []
        for key in keys:
            for list_to_take in main_dictionary[key]:
                flatted_data.append(list_to_take)
        return flatted_data

    def select_entry_types(self, types_of_entry):
        to_return = []
        for type_of_entry in types_of_entry:
            to_return.append(self.types_to_read[type_of_entry])
        return to_return

    def set_a_type(self, workbook, entry_types, row):
        final_entry_type = []
        column = 1
        for entry_type in entry_types:
            for type_of_data in self.types_of_records.keys():
                if entry_type != type_of_data:
                    continue
                for final_lists in self.types_of_records[entry_type]:
                    for direct_type in final_lists:
                        if direct_type == "nazwa":
                            final_entry_type.append("nazwa")
                            final_entry_type.append({"grupa": workbook.cell(row=row, column=column)})
                            column+=1
                        elif direct_type == workbook.cell(row=row, column=column):
                            final_entry_type.append(entry_type)
                            column +=1
                        else:
                            final_entry_type = []
                            column= 1
                if final_entry_type !=[]:
                    #final_entry_type.append(key)
                    final_entry_type.append("id")
                    final_entry_type = {type_of_data: final_entry_type}
        return final_entry_type             #{"type" : [x,D,id]}

    def load_a_record(self, worksheet_opened, type, row):
        loaded_record = {}
        for key in type.keys():
            for i in range(0, len(type[key])):
                if type[i] == "id":
                    pass
                else:
                    loaded_record.update({type[i]: worksheet_opened.cell(row=row, column=i+1).value})
            loaded_record = {key: loaded_record}
        return loaded_record

    def load_to_data_rules_and_orders(self, worksheet_opened, posible_entry_types, types_to_enrich):
        row = 0
        column = 1
        x = []
        #potential_types = self.flatten_multiple_types(posible_entry_types, types_to_read)
        type_of_record = []
        while True:
            row +=1
            shit = worksheet_opened.cell(row=row, column=column).value
            print(worksheet_opened.cell(row=row, column=column))
            if worksheet_opened.cell(row=row, column=column).value == None:
                shit_gorszy = worksheet_opened.cell(row=row+1, column=column).value
                if worksheet_opened.cell(row=row+1, column=column).value == None:
                    break                               #point of exit
                else:
                    type_of_record = self.set_a_type(self.workbook_rules, posible_entry_types, column)

            else:
                x = self.load_a_record(worksheet_opened, type_of_record, row)
                print(x)
                row += 1
            #   need to set a header -- need to rethink how to make multiple type entries -- need to rethink how to provide
            #for type in potential_types:                #TODO
            #    for header in potential_types:
            #        if header.lower == "nazwa":
            #            potential_selection_entry = header.lower
            #            row += 1

            column = 1

        pass


#load_to_data_rules_and_orders(rules_in_excel, ["rozkazy", "zasady"])
rules_in_excel = excel_loader_from_file.rules
data = LoadData(rules_in_excel,[],[],[],types_to_read)
data.load_all_data()
#while True:
#    column +=1
#    if units_loaded.cell(row=row, column=column).value == "":
#        break
#    for header in types_to_read["jednostka"]:
#        if header.lower == "nazwa":
#            potential_selection_entry = header.lower
#        row += 1
#
#
#    row = 1




