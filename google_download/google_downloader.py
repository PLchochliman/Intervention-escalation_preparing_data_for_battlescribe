import gspread_asyncio
from google.oauth2.service_account import Credentials
import gspread
import asyncio
from os import getenv
from dotenv import load_dotenv

load_dotenv()


def get_creds():
    # To obtain a service account JSON file, follow these steps:
    # https://gspread.readthedocs.io/en/latest/oauth2.html#for-bots-using-service-account
    client = gspread.auth.authorize(getenv("api_key_google"))
    #creds = Credentials.from_service_account_file(getenv("api_key_google"))
    #scoped = creds.with_scopes([
    #    getenv("Google_sheet_Pancerni_adress")
    #])
    return client


print(getenv("api_key_google"),
        getenv("Google_sheet_Pancerni_adress"))
get_creds()
#agcm = gspread_asyncio.AsyncioGspreadClientManager(get_creds)
#
#
#async def example(agcm):
#    # Always authorize first.
#    # If you have a long-running program call authorize() repeatedly.
#    agc = await agcm.authorize()
#    agc.open_by_url(getenv("Google_sheet_Pancerni_adress"))
#
#
#asyncio.run(example(agcm))
