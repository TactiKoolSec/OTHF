# Communication

An important aspect of any successful threat hunting team is the ability to
communicate freely and effectively. Hunt teams should be able to engage
different parts of the organization without barriers and as equals

## Communication Strategy

No one is going to care how good your team is if you can’t communicate how good
your team is.

One of the more underrated aspects of designing and operating a threat hunting
organization is developing a strategy to communicate with leadership how the
investment into threat hunting is generating a positive impact on the
organization. If the only message the threat hunt team delivers to key
stakeholders and leadership is whether threat hunting identified malicious
activity, it will be extremely difficult to realize the full value threat
hunting is bringing to the organization.

Detecting malicious activity is clearly part of threat hunting and when
malicious activity is discovered through threat hunting, it should immediately
be presented to leadership however, threat hunting can also improve the general
security posture of the organization by reducing attack surface, improving
detection capabilities, improve security data quality, and identify enablers of
an attack.

The first step is to identify and generate valuable metrics and KPIs (see the
Metrics section of the OTHF for more details on metric generation) which
underpin the communication strategy of the threat hunting program. Without good
data to back up your communications strategy there is very little chance for
success. At the same time, if all you have is good data the likelihood of that
data making an impact on the perception of the threat hunting program to
leadership will be reduced.

A communication strategy can help the threat hunt program by tying together the
relevant metrics into unified story which stakeholders can not only easily
understand the data but also understand why they should care.

A threat hunting communication strategy should include:

-   Goal

-   Key Messaging

-   Target stakeholders

-   Metric alignment

**Goal** – Desired results for the program delivering the communication. The
goal should align with short-, medium-, or long-term goals of the program.

**Key Messaging** – Whenever you communicate, you want each receiver to
understand the basic points and takeaways. The basic points and takeaways are
the key messages, and each receiver should be able to sum up the point of what
is being said within a sentence or two.

**Target Stakeholders** – A stakeholder is any individual or that has an
interest in an organization and the outcomes of its actions. With regards to
threat hunting, there will likely be a core set of stakeholders such as the CSO
and CISO however depending on the content of the communications, there may be
additional stakeholders that will need to be receive the communications as well.
Identifying and including the appropriate stake holders for the information is a
vital component to effective communication.

**Metric alignment** – Metrics should not be the main component of the
communications, but they should underpin the story of the communications.
Mapping the correct metrics, to key messaging, to the appropriate stakeholders
enables the communicator to select the 1 or 2 metrics that quantify the value of
a specific data point for the organization, specific business unit, or team.

| Goal                                                                                                                                                                                                                                                                                                                                 | Key Messaging                                                                                                                                         | Stakeholders           | Aligned Metrics                                                                                                |
|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------|----------------------------------------------------------------------------------------------------------------|
| Highlight how the threat hunt team is becoming more efficient by identify threat hunts which can be automated and how automated detections from the threat hunt team provide the SOC with high quality alerts. Further buy into threat hunting team creating automated detections can be used for increase funding for data sources. | Threat hunting helps the SOC by creating actionable detections  Threat hunt team is continuing to scale by automating threat hunts through detections | CSO, CISO, SOC Manager | Number of threat hunts migrated to automated detections past 30 days  False positive reductions past 30 days   |
| Goal 2                                                                                                                                                                                                                                                                                                                               | Key Messaging 2                                                                                                                                       | Stakeholders 2         | Metrics 2                                                                                                      |
| Goal 3                                                                                                                                                                                                                                                                                                                               | Key Messaging 3                                                                                                                                       | Stakeholders 3         | Metrics 3                                                                                                      |

With the communication strategy built, communications become easier to do and
more importantly more effective. It is worth the time, to build out a Goal, Key
Messaging, Stakeholders, and Metrics mapping for each of the metrics that you
are tracking within your threat hunting program.

## Communication Audiences

### Interdepartmental

Threat hunters should seek out a relationship with all technical aspects of the
organization. For example, having a positive relationship with the IT department
can lead to a better understanding of why particular applications are included
on the golden image of hosts within the environment, or why a particular
protocol was chosen as the method of transit for information throughout the
organization. This insight allows threat hunters to understand the inner
workings of the devices, applications, and data they’re tasked with
investigating on a level that will give them an advantage over any would be
attackers.

The first thing an attacker will do upon breaching any level of defenses in an
organization is to start learning as much about what they’ve gained access to as
possible. They’ll try to understand where they are and what’s connected to them
so that they can maintain persistence for as long as possible. If the attackers
are taking the time to learn as much as they can about our environments,
shouldn’t we?

### SOC/CIRT

A critical component of threat hunting is threat intelligence. Threat hunters
require the latest, high quality, threat intelligence to know where to spend
their time hunting. The type of intelligence that goes beyond indicators of
compromise (IOCs) and embraces tactics, techniques, and procedures (TTPs).
Working with your team to determine which threat actor groups are the most
likely to target your type of organization and what attacks and tools are most
likely to come your way can help you focus your hypothesis on areas that will
have the most impact to driving down risk to the organization. Hunters should
also be feeding intelligence back into the team as it’s discovered. Threat
hunters can be an incredible resource for intelligence that is highly relevant
to the organization because it was found within the organization.

When a hunter inevitably finds evidence of an attempted, or successful breach
they will have to be familiar with the incident responders, and the most current
incident response plan so threat they can seamlessly shift gears from hunting,
to responding.

### Threat Hunting Team

An absolute necessity of any threat hunting team is the ability to communicate
with one another effectively. To share what hypotheses they’re working on, how
far down the rabbit hole they’ve gone, what they’ve collected, and how they
could hand it off if necessary to do so.

Hunt teams should utilize a shared documentation system, something that allows
them to see real time notes and data on not only hunts that are ongoing, but all
hunts that have taken place in the past. This allows the team to build a threat
hunting knowledgebase; a reference when they detect an anomaly to see if it’s
been detected before and how a previous hunter handled that situation. Data
silos and tribal knowledge are not useful for the knowledge of the team, or for
the ensuring that the organizational resources that were spent to facilitate the
hunts were used most effectively.

While teams will consist of hunters with varying skillsets and levels of
experience it’s important that any hunter, whether brand new to threat hunting
or a seasoned expert, has the ability to review hunt data and call attention to
anything they see as a potential concern. All anomalies are interesting and
require investigation, regardless of who detected them or whether they
ultimately lead to an attacker. Many years ago the airline industry made it an
industry practice that any individual involved with an aircraft could raise a
concern and all parties must investigate, I repeat, must investigate. From the
co-pilot, to the ground crew, to the flight attendant. All parties on or around
an aircraft are equal. It’s one of the reasons that the airline industry has
such an impeccable safety record. Safety comes first, not rank, expertise, or
perceived hierarchy. This same mentality should be used within any threat
hunting team when it comes to organizational security. If any member of the team
has a concern it’s taken seriously and a proper investigation is completed and
documented.

### Leadership

Communicating the effectiveness of a threat hunting team to leadership is a
challenge all its own. When the SOC sends a report to leadership they can say
“We received X number of alerts this week which led to Y incidents or
escalations.” As anyone who has spent time as a SOC analyst can tell you, the
alerts just keep coming. Quantifying threat hunting can be much more difficult.
Leadership is going to want to know what you’re doing with the time spent
hunting and how it’s leading to a more secure organization. We can do this with
our own metrics. We’ll get into this in greater detail in the Metrics section of
the OTHF but understanding that tracking the number of hypotheses you’ve
created, what was learned from investigating them, and what additional alerts,
automations, and reports were created because of them. We’ll want to track how
many vulnerabilities were discovered, misconfigurations identified, and gaps
closed to reduce the organizational attack surface. All of these things are what
leadership cares about, and we need to be sure they know what their threat
hunters are doing and how their improving the overall organizational posture,
and driving down risk.
