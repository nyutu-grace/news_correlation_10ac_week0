from loader import NewsDataLoader
import unittest

class TestNewsDataLoader(unittest.TestCase):

    def test_init(self):
        # Test initialization of NewsDataLoader
        data_loader = NewsDataLoader(self)
        self.assertEqual(data_loader.path, self)
        self.assertDictEqual(data_loader.channels, {"channel1": ["message1", "message2"], "channel2": ["message3"]})
        self.assertDictEqual(data_loader.users, {"user1": "channel1", "user2": "channel2"})

    def test_get_users(self):
        # Test get_users method
        data_loader = NewsDataLoader(self)
        self.assertEqual(data_loader.get_users(), {"user1": "channel1", "user2": "channel2"})

    def test_get_channels(self):
        # Test get_channels method
        data_loader = NewsDataLoader(self)
        self.assertEqual(data_loader.get_channels(), {"channel1": ["message1", "message2"], "channel2": ["message3"]})

    
if __name__ == '__main__':
    unittest.main()