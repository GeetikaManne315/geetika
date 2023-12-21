select
pets_col:Address.City::string as City,
pets_col:Address."House Number"::string as House_No,
pets_col:Address.State::string as State,
pets_col:DOB::date as date1,
pets_col:Gender::string as gender,
pets_col:Name::string as Name,
f1.value::string as Pets,
pets_col:Phone.Mobile::number as Mobile,
pets_col:Phone.Work::number as Work
from pets1,
table(flatten(pets_col:Pets)) f1
