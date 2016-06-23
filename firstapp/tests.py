from django.test import TestCase

# Create your tests here.


class FirstAppTest(TestCase):

    def test_get(self):
        resp = self.client.get('/')
        self.assertEquals(resp.status_code, 200)
