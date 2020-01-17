import secrets
import string
import random
from datetime import datetime

def id_generator(size=6, chars=string.ascii_uppercase + string.digits):
    return ''.join(random.choice(chars) for _ in range(size))

bid_list = []

for i in range(0,12):
    bid_list.append(
        {
            "address" : "0x66BDCFC8F6BAB8BEC02366BDCFC8F6BAB8BEC023" ,
            "vendor_name" : id_generator(),
            "initiated_by" : "0x" + str(secrets.token_hex(40)),
            "file_hash" : str(secrets.token_hex(128)),
            "initiated_at" : str(datetime.now()),
            "bid_amount" : random.randint(100000, 300000)
        }
    )

print("\n\n\n")
# print(bid_list)

tender_list = []

for i in range(0, 12) :
    tender_list.append(
        {
            "address" : "0x" + str(secrets.token_hex(40)),
            "location" : random.randint(1,50),
            "upload_date" : str(datetime.now()),
            "selectedBid" : random.randint(0, 12)
        }
    )

# print(tender_list)

payment_history = []

for i in range(0, 4) :
    payment_history.append(
        {
            "payment_id" : i,
            "amount" : 13435,
            "transaction_id" : random.randint(1234567890, 2345678901),
            "sent_by" : "0x" + str(secrets.token_hex(40)),
            "send_at" : str(datetime.now()),
            "received_by" : "0x" + str(secrets.token_hex(40)),
            "received_at" : str(datetime.now()),
            "acknowledge" : random.randint(0, 1)
        }
    )

# print(payment_history)

selected_bids = []

for i in range(0,5) :
    selected_bids.append(
        {
            "tender_name" : id_generator(size=8),
            "vendor_name" : id_generator(size=8),
            "selected_by" : "Bert Home"
        }
    )

print(selected_bids)