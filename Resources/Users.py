from faker import Faker
fake = Faker('pt_BR')

def factory_user_masc():
    user = {
        'name': fake.first_name_male(),
        'lastname': fake.last_name_male(),
        'job': fake.job()
    }

    return user

def factory_user_feme():
    user = {
        'name': fake.first_name_female(),
        'lastname': fake.last_name_female(),
        'job': fake.job()
    }

    return user

# http://www.phptravels.net/login
# customerEmail user@phptravels.com
# Password demouser

# http://www.phptravels.net/admin
# Email admin@phptravels.com
# Password demoadmin