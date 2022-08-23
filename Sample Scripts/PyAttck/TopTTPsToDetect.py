from pyattck import Attck
import sys
import getopt
import csv
import pandas as pd


def attcksearch(api_id):
    attack = Attck()
    for technique in attack.enterprise.techniques:
        if technique.id == api_id:
            print(technique.name)
            TTPDetect = pd.DataFrame(technique.possible_detections)
            csvname = technique.technique_id + '_' + technique.name + '.csv'
            print(TTPDetect)
            TTPDetect.to_csv(csvname)          
                
            
def main(argv):
   api_id = ''
   try:
      opts, args = getopt.getopt(argv,"hi:o:",["api_id="])
   except getopt.GetoptError:
      print ('test.py -i <api id name>')
      sys.exit(2)
   for opt, arg in opts:
      if opt == '-h':
         print('test.py -i <api id name>')
         sys.exit()
      elif opt in ("-i", "--apiid"):
         api_id = arg
   print ('api id is "', api_id)
   attcksearch(api_id)

if __name__ == "__main__":
   main(sys.argv[1:])
   

