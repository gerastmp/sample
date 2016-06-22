from django.test import TestCase

# Create your tests here.


class FirstAppTest(TestCase):

    def test_get(self):
        resp = self.client.get('/index/')
        self.assertEquals(resp.status_code, 200)
