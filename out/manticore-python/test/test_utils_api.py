# coding: utf-8

"""
    Manticore Search API

    This is the API for Manticore Search HTTP protocol   # noqa: E501

    The version of the OpenAPI document: 1.0.0
    Contact: info@manticoresearch.com
    Generated by: https://openapi-generator.tech
"""


from __future__ import absolute_import

import unittest

import openapi_client
from openapi_client.api.utils_api import UtilsApi  # noqa: E501
from openapi_client.rest import ApiException


class TestUtilsApi(unittest.TestCase):
    """UtilsApi unit test stubs"""

    def setUp(self):
        self.api = openapi_client.api.utils_api.UtilsApi()  # noqa: E501

    def tearDown(self):
        pass

    def test_sql(self):
        """Test case for sql

        Perform SQL requests  # noqa: E501
        """
        pass


if __name__ == '__main__':
    unittest.main()
