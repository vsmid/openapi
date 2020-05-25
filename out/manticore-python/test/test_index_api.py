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
from openapi_client.api.index_api import IndexApi  # noqa: E501
from openapi_client.rest import ApiException


class TestIndexApi(unittest.TestCase):
    """IndexApi unit test stubs"""

    def setUp(self):
        self.api = openapi_client.api.index_api.IndexApi()  # noqa: E501

    def tearDown(self):
        pass

    def test_bulk(self):
        """Test case for bulk

        Bulk index operations  # noqa: E501
        """
        pass

    def test_delete(self):
        """Test case for delete

        Delete a document in an index  # noqa: E501
        """
        pass

    def test_insert(self):
        """Test case for insert

        Create a new document in an index  # noqa: E501
        """
        pass

    def test_replace(self):
        """Test case for replace

        Replace new document in an index  # noqa: E501
        """
        pass

    def test_update(self):
        """Test case for update

        Update a document in an index  # noqa: E501
        """
        pass


if __name__ == '__main__':
    unittest.main()
