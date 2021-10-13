#!/usr/bin/env python
# coding=utf-8

from random import *
from string import *
from datetime import *
from calendar import *
from faker import Faker
from dateutil.relativedelta import relativedelta
from SeleniumLibrary import SeleniumLibrary
import base64

import calendar
if __name__ == "__main__":
   import doctest
   doctest.testmod()

"""Library for common functions."""


def anna_satunnainen_etunimi():
  """
  Palauttaa satunnaisen suomalaisen etunimen. Joko miehen tai naisen.
  """
  fake = Faker('fi_FI')
  return fake.first_name()

def anna_satunnainen_etunimi_nainen():
  """
  Palauttaa satunnaisen suomalaisen etunimen. Joko miehen tai naisen.
  """
  fake = Faker('fi_FI')
  return fake.first_name_female()

def anna_satunnainen_etunimi_mies():
  """
  Palauttaa satunnaisen suomalaisen etunimen. Joko miehen tai naisen.
  """
  fake = Faker('fi_FI')
  return fake.first_name_male()

def anna_satunnainen_sukunimi():
  """
  Palauttaa satunnaisen suomalaisen sukunimen.
  """
  fake = Faker('fi_FI')
  return fake.last_name()

def anna_satunnainen_numero():
  """
  Palauttaa satunnaisen suomalaisen sukunimen.
  """
  fake = Faker('fi_FI')
  return fake.phone_number()

def anna_satunnainen_sahkoposti():
  """
  Palauttaa satunnaisen suomalaisen sukunimen.
  """
  fake = Faker('fi_FI')
  return fake.email()

def anna_satunnainen_salasana():
  """
  Palauttaa satunnaisen suomalaisen sukunimen.
  """
  fake = Faker('fi_FI')
  return fake.password()