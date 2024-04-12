import json
import argparse
import os
import io
import shutil
import copy
from datetime import datetime
from time import sleep



# Create wrapper classes for using slack_sdk in place of slacker
class NewsDataLoader:
  
    def __init__(self, path):
        
        self.path = path
        self.channels = self.get_channels()
        self.users = self.get_users()
        
    def get_users(self):
        '''
        write a function to get all the users from the json file
        '''
        with open(os.path.join(self.path, 'users.json'), 'r') as f:
            users = json.load(f)

        return users
    
    def get_channels(self):
        '''
        write a function to get all the channels from the json file
        '''
        with open(os.path.join(self.path, 'channels.json'), 'r') as f:
            channels = json.load(f)

        return channels

    def get_channel_messages(self, channel_name):
        '''
        write a function to get all the messages from a channel
        
        '''
        
