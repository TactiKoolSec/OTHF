from pyattck import Attck
import csv

attack = Attck()
fieldnames = ['Adversary', 'Technique','Technique ID', 'SubTechnique','Data Source','API_ID']
with open('adversaries2.csv', 'w', encoding='UTF8', newline='') as f:
    writer = csv.writer(f)
    writer.writerow(fieldnames)
    for actor in attack.enterprise.actors:    
        for technique1 in actor.techniques:
            #print("yeet")    
            for technique2 in attack.enterprise.techniques:
                if(technique2.id == technique1.id):
                    #print("yeet2")
                    for subtechnique in technique2.techniques:
                        adversary = actor.name
                        techname = technique1.name
                        techid = technique2.technique_id
                        subtechname = subtechnique.name
                        subtechnid = subtechnique.id
                        for dataset in subtechnique.x_mitre_data_sources:
                            row = [adversary, techname, techid,subtechname,dataset,subtechnid]
                            writer.writerow(row)