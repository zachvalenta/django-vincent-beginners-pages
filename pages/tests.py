from django.test import SimpleTestCase


class PagesTests(SimpleTestCase):
    def test_home_page(self):
        self.assertEqual(self.client.get('/').status_code, 200)
    
    def test_about_page(self):
        self.assertEqual(self.client.get('/about/').status_code, 200)
