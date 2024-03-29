<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gameSystem id="f8e8-54ee-18f5-565b" name="Tactical Intervention - Escalation" revision="3" battleScribeVersion="2.03" authorName="Kacper Chocholski" authorContact="chochlikman@gmail.com" xmlns="http://www.battlescribe.net/schema/gameSystemSchema">
  <readme>To jest do Tactical intervention, czyli trochę taktyki i dowodzenia w tym smutnym jak pizda kosmosie.</readme>
  <publications>
    <publication id="fcb5-521d-979f-2f8f" name="Pancerni per model" shortName="mój" publisher="Moje pierdolone google sheety na dysku googla" publicationDate="od 2022 to napierdalam" publisherUrl="https://docs.google.com/spreadsheets/d/1nQkvjm2DzVKzz4-jI0I0OMElrD7-tTvqW78MUXPHPyY/"/>
  </publications>
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
    <profileType id="7c77-8b23-7b1b-1a2a" name="Broń strzelecka">
      <characteristicTypes>
        <characteristicType id="ea71-7914-af0e-b25c" name="Szybkostrzelność"/>
        <characteristicType id="9bc3-d98e-5f29-4db6" name="Zasięg"/>
        <characteristicType id="efab-1f23-eb01-c935" name="Obrażenia"/>
        <characteristicType id="166b-e0bd-eab7-463d" name="Penetracja"/>
        <characteristicType id="cf8b-1465-4f9b-f728" name="Zasady specjalne"/>
      </characteristicTypes>
    </profileType>
    <profileType id="7225-c3cf-b625-7fd0" name="Zasady specjalne">
      <characteristicTypes>
        <characteristicType id="25b4-46e7-8cfa-563a" name="Zdolność"/>
      </characteristicTypes>
    </profileType>
    <profileType id="e26c-822c-8108-09fc" name="Broń do walki wręcz">
      <characteristicTypes>
        <characteristicType id="05cb-a806-e50d-36b3" name="Ataki"/>
        <characteristicType id="bc81-883a-befe-f160" name="Szybkość"/>
        <characteristicType id="a614-22df-366c-ba32" name="Obrażenia"/>
        <characteristicType id="c6e8-b8db-5e67-a281" name="Penetracja"/>
        <characteristicType id="c124-3fa2-23c3-da3c" name="Zasady specjalne"/>
      </characteristicTypes>
    </profileType>
    <profileType id="408f-1b69-ac4f-169a" name="Piechota">
      <characteristicTypes>
        <characteristicType id="fb72-8923-f5de-e4c2" name="Liczebność"/>
        <characteristicType id="f433-d8a4-a8c0-e85e" name="Celność"/>
        <characteristicType id="bc34-45b8-02ff-1a2f" name="Unik"/>
        <characteristicType id="3d41-8d8c-e8d2-74d1" name="Walka w zwarciu"/>
        <characteristicType id="003c-a9ec-152e-a375" name="Żywotność"/>
        <characteristicType id="0b08-2295-2c23-7a3e" name="Pancerz"/>
        <characteristicType id="c201-4fbb-8419-56b3" name="Inicjatywa"/>
        <characteristicType id="e0ce-da8a-6f77-4177" name="Uzbrojenie"/>
        <characteristicType id="9009-a36c-95a7-60ea" name="Opcje"/>
        <characteristicType id="d74a-bb6a-48b4-c168" name="Osłona"/>
      </characteristicTypes>
    </profileType>
  </profileTypes>
  <categoryEntries>
    <categoryEntry id="92a3-aea5-46f9-1d72" name="Piechota" publicationId="fcb5-521d-979f-2f8f" hidden="false"/>
    <categoryEntry id="f506-bed1-f370-b192" name="Pojazdy" publicationId="fcb5-521d-979f-2f8f" hidden="false"/>
    <categoryEntry id="8c68-5a75-197f-ad94" name="Monstra" publicationId="fcb5-521d-979f-2f8f" hidden="false"/>
  </categoryEntries>
  <forceEntries>
    <forceEntry id="3dc3-65ab-7631-c2af" name="Kompania Pancernych" publicationId="fcb5-521d-979f-2f8f" hidden="false">
      <forceEntries>
        <forceEntry id="de66-1bd0-2350-7b9d" name="Sprawdzam jak to kurwa działą" hidden="false"/>
      </forceEntries>
      <categoryLinks>
        <categoryLink id="3e82-856a-1a02-b187" name="Piechota" publicationId="fcb5-521d-979f-2f8f" hidden="false" targetId="92a3-aea5-46f9-1d72" primary="false"/>
      </categoryLinks>
    </forceEntry>
  </forceEntries>
  <selectionEntries>
    <selectionEntry id="b82d-5f93-1a0f-0f77" name="Jakiś kurwa wybór" publicationId="fcb5-521d-979f-2f8f" hidden="false" collective="false" import="true" type="unit">
      <categoryLinks>
        <categoryLink id="7066-554b-6b38-da49" name="Kategoria" hidden="false" targetId="92a3-aea5-46f9-1d72" primary="true"/>
      </categoryLinks>
      <selectionEntryGroups>
        <selectionEntryGroup id="bc2b-389a-3bf6-6f17" name="New SelectionEntryGroup" hidden="false" collective="false" import="true">
          <constraints>
            <constraint field="selections" scope="roster" value="10.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="0430-ac97-e342-391b" type="max"/>
          </constraints>
          <selectionEntries>
            <selectionEntry id="8e2c-138f-5c5d-16bb" name="pierdziszew" hidden="false" collective="false" import="true" type="model">
              <costs>
                <cost name="ptk" typeId="7921-831d-f13f-9469" value="10.0"/>
                <cost name="Punkty walki wywiadowczej" typeId="9f0c-d0a4-ea60-16c3" value="0.0"/>
                <cost name="Punkty dowodzenia" typeId="eb58-26dd-90a1-c631" value="0.0"/>
              </costs>
            </selectionEntry>
          </selectionEntries>
        </selectionEntryGroup>
      </selectionEntryGroups>
      <costs>
        <cost name="ptk" typeId="7921-831d-f13f-9469" value="0.0"/>
        <cost name="Punkty walki wywiadowczej" typeId="9f0c-d0a4-ea60-16c3" value="0.0"/>
        <cost name="Punkty dowodzenia" typeId="eb58-26dd-90a1-c631" value="0.0"/>
      </costs>
    </selectionEntry>
  </selectionEntries>
  <rules>
    <rule id="ba84-edff-3451-ff8a" name="Precyzyjny" publicationId="fcb5-521d-979f-2f8f" hidden="false">
      <description> Trafienie krytyczne zadaje obrażenia  i penetrację  zwiększone o 1.</description>
    </rule>
  </rules>
  <sharedSelectionEntries>
    <selectionEntry id="b8d2-3c37-245f-0c7d" name="Jakiś init" publicationId="fcb5-521d-979f-2f8f" hidden="false" collective="false" import="true" type="unit">
      <costs>
        <cost name="ptk" typeId="7921-831d-f13f-9469" value="0.0"/>
        <cost name="Punkty walki wywiadowczej" typeId="9f0c-d0a4-ea60-16c3" value="0.0"/>
        <cost name="Punkty dowodzenia" typeId="eb58-26dd-90a1-c631" value="0.0"/>
      </costs>
    </selectionEntry>
  </sharedSelectionEntries>
  <sharedSelectionEntryGroups>
    <selectionEntryGroup id="3e3b-9bd6-7399-ca7d" name="jakaś grupa" publicationId="fcb5-521d-979f-2f8f" hidden="false" collective="false" import="true"/>
  </sharedSelectionEntryGroups>
  <sharedRules>
    <rule id="660e-30e4-0196-d40e" name="dowódca drużyny" publicationId="fcb5-521d-979f-2f8f" hidden="false">
      <description>Może w fazie ruchu i akcji, albo podczas strzelania, powielić identyczne działanie. Zamień model na model dowódcy oddziału. Nie może wydawać rozkazów, ale może je powielać. Zasięg dowodzenia 3</description>
    </rule>
    <rule id="2bc8-decb-903c-9540" name="dowódca plutonu" publicationId="fcb5-521d-979f-2f8f" hidden="false">
      <description>Generuje punkt dowodzenia. Zwiększa inicjatywę jednostki do której został przydzielony o 1. Jako oddzielny model może dołączyć minimalnie do 3 modelowego oddziału, w innym przypadku wymień model na dowódcę plutonu. Może wydawać rozkazy oraz je powielać. Zasięg dowodzenia 6.</description>
    </rule>
    <rule id="1d80-6e77-21ad-06d6" name="dowódca kompani" publicationId="fcb5-521d-979f-2f8f" hidden="false">
      <description>Generuje 2 punkty dowodzenia. Zwiększa inicjatywę jednostki o 2. jako oddzielny model może dołączyć minimalnie do 3 modelowego oddziału, w innym przypadku wymień model na dowódcę kompani. Może wydawać rozkazy oraz je powielać. Zasięg dowodzenia 9.</description>
    </rule>
  </sharedRules>
  <sharedProfiles>
    <profile id="61cc-2c6e-e490-2379" name="o kurwa tak mogę uwspółnić podstawowych marine!!!" publicationId="fcb5-521d-979f-2f8f" hidden="false" typeId="ca7e-8465-ce27-9076" typeName="Piechota bez osłony">
      <characteristics>
        <characteristic name="Liczebność" typeId="7535-c935-1a20-689d">x kurwa D</characteristic>
        <characteristic name="Celność" typeId="cdd0-8e6c-be69-16b2">beka </characteristic>
        <characteristic name="Unik" typeId="5cfb-b67a-e89d-70b4">no i</characteristic>
        <characteristic name="Walka w zwarciu" typeId="6d86-ab2d-5fe3-1a21">5 i chuj</characteristic>
        <characteristic name="Żywotność" typeId="8ffa-c3bd-30a9-83ff"/>
        <characteristic name="Pancerz" typeId="b464-b63d-e84e-2c6f"/>
        <characteristic name="Inicjatywa" typeId="4b8f-e171-e0ca-9322"/>
        <characteristic name="Uzbrojenie" typeId="049d-6576-b50b-6499"/>
      </characteristics>
    </profile>
    <profile id="6680-8a53-f88b-526a" name="Karabinek &quot;Thunder&quot;" publicationId="fcb5-521d-979f-2f8f" page="Escalation - Broń strzelecka" hidden="false" typeId="7c77-8b23-7b1b-1a2a" typeName="Broń strzelecka">
      <characteristics>
        <characteristic name="Szybkostrzelność" typeId="ea71-7914-af0e-b25c">3</characteristic>
        <characteristic name="Zasięg" typeId="9bc3-d98e-5f29-4db6">3</characteristic>
        <characteristic name="Obrażenia" typeId="efab-1f23-eb01-c935">3</characteristic>
        <characteristic name="Penetracja" typeId="166b-e0bd-eab7-463d">3</characteristic>
        <characteristic name="Zasady specjalne" typeId="cf8b-1465-4f9b-f728">Precyzyjny </characteristic>
      </characteristics>
    </profile>
  </sharedProfiles>
  <sharedInfoGroups>
    <infoGroup id="181f-fa94-6378-cb45" name="Dowódcy" hidden="false"/>
  </sharedInfoGroups>
</gameSystem>