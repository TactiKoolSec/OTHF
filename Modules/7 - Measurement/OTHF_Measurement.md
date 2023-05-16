1.  Measurement

There’s a famous quote by Stuart H. Britt that says, “Doing business without
advertising is like winking at a girl in the dark, you know what you’re doing,
but nobody else does.” And while this quote is specifically about business and
advertising the same thing can be said about threat hunting and documentation.
You can be one of the best hunters in the world, or have one of the best teams
of hunters in the world, but if you’re not documenting what you’re doing, no
one’s going to *know* what you’re doing.

Threat hunting is called ‘hunting’ for a reason. It’s the process of searching
for something that’s not currently being detected, searching…not necessarily
finding. Of course, that doesn’t mean there’s not value in the time spent
hunting that doesn’t lead to an attacker. It’s important to remember that just
because something you find isn’t evil doesn’t mean it isn’t interesting.

Documentation and metrics allow you to demonstrate the value of the time spent
hunting, not just to management, though that’s a huge part of it, but also to
the rest of your team. It allows you to share what you focused on, what you
learned, how it was beneficial or not, and how the discoveries you made can be
replicated by following the paths you took. It provides opportunities to share
processes and techniques with fellow hunters through white papers, conference
talks, or even something as simple as a tweet. The things that you’re doing have
value and if writing them down and sharing them stops one more attacker, or
helps an organization reduce their attack surface even by a little, isn’t that
worth it?

The Selfish Side of Metrics

We’re going to give you plenty of reasons you should document your hunts and how
they demonstrate value to the organization, but what about value for yourself?
All of the metrics we’re going to discuss are beneficial to the hunter as well.
It’s exactly the type of data that looks fantastic on a performance review. When
that annual review comes around and you can say “I’ve worked X number of
hypotheses, which led to the identification of Y vulnerabilities and Z number of
misconfigurations. I also detected X number of attackers causing the discovery
of Y breaches that had gone undiscovered for Z months.”, it’s not going to hurt.
So even if your motivation is purely selfish, that’s okay, write it down, all of
it.

1.  Defining Success

Before you can decide if your efforts are successful you need to determine what
success looks like. Success for one organization won’t necessarily translate
into success to another. Success and the criteria around that success are
personal things. Do you want to discover a certain number of misconfigurations?
Are you looking for gaps in your security structure? Are you trying to find
users violating company policies? Or are you looking for a certain number of
attackers?

These are all great questions to ask yourself and your leadership. Understanding
what’s expected and focusing on meeting those goals can translate into
additional hours allotted to hunting, additional full time threat hunters, or
additional tools and resources to make your hunts easier or more focused. All of
these are good things.

1.  Measuring Success

Measuring success doesn’t have to be done with fancy tools or solutions, you can
measure success using any method that works for you, your team, and your
organization. Just like defining success, this is something you should discuss
as a team and decide what works best for you.

With that in mind, the following are a few things that can make documentation
and metrics easier to manage:

-   Choose methods of documentation that are easy for your hunters to use. If
    the process and tools you select are ones the team isn’t interested in using
    you’re going to have a much harder time getting quality results from them.

-   Use a method that’s shareable with the entire team. This allows hunters to
    keep notes on what they’re currently engaged in so that if they feel the
    need to hand off the hunt at the end of a shift the next hunter can pick up
    right where they left off without an extensive handoff.

-   Use something that’s searchable. You want to design your documentation in a
    way that allows it to not only act as a record of things done in the past,
    but also a knowledge base on what may have triggered a hunt, and what its
    eventual outcome was. This can be incredibly useful to junior hunters as
    this will give them the ability to ‘look over the shoulder’ of other team
    members and learn from their methods and experience.

1.  Defining Metrics

Now that we’ve talked about what success looks like and how to measure it we’re
going to want to decide what metrics are worth collecting. Since you’re a threat
hunter you’ll recognize that a pattern is emerging here. What you collect and
what’s important is up to you to decide but we’ll give you some suggestions to
build on.

This list shouldn’t be considered complete, or in any way exhaustive. These
metrics are meant as a good jumping off point to identify and develop the
metrics that matter to you. They should drive conversations between your team
and management to decide what has the most value to you. Try to keep in mind
that the more data you can collect about your threat hunting practice, the
easier it’ll be for you to make the case for more time and resources to hunt
with.

1.  Hunt Tracking

Each hunt should begin with some type of hypothesis, which is just a question to
answer or assumption about the environment. While the best hypotheses are born
from threat intelligence or an offensive mindset it won’t matter how good they
are if they’re not written down. As with many aspects of hunting, this doesn’t
have to be complicated, a simple method of documenting what the hypothesis was,
what data sources were used, and what lessons were learned is enough to show the
value, or absence of value, while providing a record of where you’ve been and
what investigations generated the most actionable results.

Here are some things you’ll want to include when documenting your hunt:

-   The Hypothesis Itself – This is the actual question you’re asking or theory
    you’re putting to the test. This could be something like “If data was being
    exfiltrated from our environment we believe it would most likely leave from
    X egress point.” or “We believe Cobalt Strike C2 beaconing could be taking
    place on our network.”

-   

-   Threat Intelligence Sources – What threat intelligence was used in order to
    develop this hypothesis or help with its investigation. This should be
    documented because as you work through each hypothesis you’ll find which
    threat intelligence is of most value to you and your organization. Is there
    a certain source or two that keeps As there are an overabundance of threat
    intelligence sources available, even this data has value.

-   Data Sources Used – What data was required to prove this hypothesis? Knowing
    that you have access to the appropriate data necessary to do the
    investigation is a huge step in identifying if you have blind spots. Write
    this down, find those blind spots, and correct them. More visibility means
    more avenues for detection.

-   Operating Systems Investigated – If you’re focused on hosts then knowing
    where that focus lies is key to any future mitigations created or for the
    development of junior hunters who might need additional experience with
    certain OS’s. Remember, this is also a knowledge base.

-   Network Protocols Investigated – When hunting within network data you’ll
    want to make sure each protocol you used in the investigation is documented
    as well. A quick glance at this field will allow senior hunters to identify
    if something could have clearly been missed but also will clue them in to
    any analyst biases that may appear based on the focus of the investigation.

-   Indicators and Enablers of Compromise Discovered – While hunting doesn’t
    always lead to evidence of a breach, sometimes it does. This is high value
    information and key to documenting the investigation. It’s also critical to
    creating future mitigations. This also holds true for enablers of
    compromise. While not evidence of a possible breach an EoC might give an
    attacker an advantage while attempting to gain entry to, or persist within,
    an organization. This could be using cleartext protocols, improper network
    segmentation, unpatched servers, etc. EoCs broaden our attack surface, their
    discovery, documentation, and resolution are critical to any security
    program.

-   Mitigations Created – After discovering any IoCs, EoCs, or data of interest
    we’re going to want to take action. While the hunter themselves may not
    always be responsible for this step, they’re going to need a clear path to
    escalate any findings. This could be creating a new alert, writing a new
    report, creating a new automation playbook, aging out some old threat
    intelligence, or any number of other tasks. The point is, hunting should
    provide results, and this field should be full of them.

-   Hunters Involved – Knowing who participated in a hunt allows you to see
    where each of your hunters is spending their time, the results they’re
    delivering, and who to go to when you need someone to speak to the data.
    There are lessons to be learned and stories to tell from every hunt and
    these are your storytellers.

1.  Programmatic Metrics

When you’re looking at your program and attempting to communicate what it
provides back to the organization, these metrics are key. They may seem simple,
or maybe just not as technical as our attack surface metrics, but they’re what
management wants to hear when you’re discussing how threat hunting is being used
to improve your SOC or CIRT.

-   Number of Hunts Conducted – Incredibly straightforward. How many hunts are
    you doing? Correlating this metric with the time spent hunting and their
    results can lead to insights about which hunts are the most valuable to your
    organization.

-   Hours Dedicated to Hunting – Speaking of time. Understanding the amount of
    time spent overall, as well as on individual hunts, will help you align
    expectations on particular types of hunts and the time required to perform
    them effectively.

-   Alerts Created – There are many cases where a hunter will discover something
    that can be turned into an alert. Tracking how many alerts are suggested by
    your hunters will allow you to understand the number of alerts created in
    house versus from external sources and what the difference in the value of
    those alerts might be.

-   Reports Created – A hunter may discover some data of interest that’s not
    alertable, but is worth looking into. Daily or weekly reports can be a great
    source to initiate a hunt or task an analyst with investigating. For
    example, having an analyst look at a report of the least common processes
    running on a small number of endpoints in a large organization. This could
    be completely normal for the environment, but it’s worth looking at the
    outliers and the data is always changing. You don’t need an alert, you need
    a report.

-   Threat Intelligence Generated – Hunters can provide you with intelligence
    that is directly tied to your organization by looking at an undetected
    attack and “We saw this type of activity, from this region, in this area of
    network.’ Hunters are also a great source to identify threat intelligence
    that should be decommissioned from your program as hunting using old threat
    intelligence can be incredibly frustrating and can misuse the limited time
    dedicated to threat hunting.

-   Automation Playbooks Created – While you can’t automate threat hunting
    completely, there are types of data collection or responses to certain type
    of data that can be automated. The goal is to focus our hunts and
    investigations on the most actionable data we can. Document why a new
    playbook is recommended and how it can help the SOC and your hunters, the
    expected time saved by implementing this playbook is a great metric to
    capture as well.

-   Declared Incidents or IR Engagements Generated – Documenting how often a
    hunt leads to evidence of an actual breach is crucial. Most organization,
    and even many security professionals believe that this is the sole benefit,
    or goal, of threat hunting. Comparing the number of declared incidents
    triggered by threat hunting versus traditional alerts can also demonstrate
    the value of hunting in identifying the most critical attacks.

-   Data Source Blind Spots Discovered – When attempting to prove out a
    hypothesis hunters may discover that the organization is lacking access to
    the data necessary to identify evidence of a particular attack technique.
    Identifying these gaps in visibility and correcting them before an attacker
    uses one to go undetected is incredibly valuable and should be documented
    and shared.

-   Security Recommendations Communicated – At times hunters may identify a
    misconfiguration, gap, vulnerability, or technology that’s not working as it
    should or is leaving the organization exposed to potential attacks. A
    mechanism to receive feedback from hunters on what could be done to improve
    the security of the organization should be part of any hunt program.

-   Community Engagement Opportunities – Threat hunting provides an incredible
    number of learning opportunities both for the hunter themselves, the team
    they belong to, and the organization as a whole. But what about sharing what
    they’ve learned or how they’ve learned it? If your hunters are writing white
    papers, giving conference talks, or sharing their methods in some other way,
    you’ll want to make sure you’re keeping track of these things. Community
    engagement can lead to ideas, innovations, and information sharing that will
    not only increase the overall security of your organization but increase its
    brand recognition as well.

1.  Attack Surface Reduction

At the end of the day this is what it’s all about. We’re trying to reduce risk
to the organization and reduce our overall attack surfaces, it’s why security
exists, it’s our ultimate goal, and threat hunting helps us get there. There are
a lot of ways to show value

Here are some of the metrics you can focus on when deciding what to track and
what to set aside. This list is long, you don’t have to try to do all of them,
but a selection of the following will give you a good place to start and allow
you to shape and focus your metrics collections based on the feedback you
receive from your team and from management.

-   Advanced Persistent Threat Group TTPs Investigated – Knowing what business
    you’re in and who the most likely attackers to target that type of business
    are will allow you to focus your hunts on the TTPs that those groups use.
    Being able to go to management and say “We’ve identified these 5 groups as
    our most likely attackers and we’ve spent X number of hours conducting Y
    number of hunts to ensure we don’t see evidence of the attack techniques
    those groups use in our environment.” is going to have a huge impact on the
    perceived value of your threat hunting efforts. Give your CISO what they
    need to make the case for more resources for you and your team. This metric
    does that.

-   MITRE ATT&CK IDs Investigated – ATT&CK is an invaluable source of the kind
    of threat intelligence that really matters, TTPs. Decide which techniques
    are relevant to the technologies you have within your organization and look
    for evidence of those TTPs. Move through them systematically from most
    likely to least likely and document your journey.

-   Misconfigurations Discovered – Some vulnerabilities aren’t malicious or
    aren’t failings in the design or coding of an asset. Sometimes they’re just
    not configured correctly. Admins might believe that they’ve done everything
    right, that they’ve secured the system as requested but sometimes looking at
    the traffic being sent, or the behavior of the device itself shows that
    despite the best intentions mistakes can happen.

-   Vulnerabilities Discovered/Identified – Finding evidence that a
    vulnerability exists within your environment before an attacker does is
    critical to attack surface reduction. If your hunters are seeing
    vulnerabilities in production this can identify a gap in your vulnerability
    assessment program, closing these gaps allows you to shore up your defenses
    and increase your coverage before an attacker has the chance to use this
    against you.

-   Cleartext Protocols in Use – Cleartext protocols exist in every environment,
    even ones that don’t think they’re using them. Are you aware of how much FTP
    traffic leaves your organization? Why are you still using clear text
    protocols when encrypted alternatives exist?

-   Overall Percentage of Encrypted vs Unencrypted Traffic – This is a simple
    metric but one that any organization should be aware of. What the *actual*
    amount of encrypted traffic that’s traversing the network is and whether
    that’s leaving your defenders blind are questions you’ll want to answer.
    Knowing what your threshold is and at what point you may need to implement a
    decryption solution will allow you to forecast that expense and communicate
    your need to management as that time approaches.

-   Cleartext Usernames/Passwords Discovered – An incredibly common part of any
    breach is credential abuse, whether being used for initial entry or for
    lateral movement and persistence, cleartext credentials can cost you dearly.
    Document the number of times you see credentials left in the clear in config
    files, general documents, or passed on the wire. Even if those credentials
    are only being seen internally, just one level of compromise can potentially
    give the attacker the keys to so much more.

-   Insecure Systems Identified – You may be searching through web traffic and
    discover that the browser that’s sending data is incredibly old, or a web
    server is unpatched, or that the operating system is currently vulnerable to
    an attack with a readily available patch. Sometimes systems are missed or
    misplaced, finding and closing these gaps before an attacker does is
    critical, but you can’t trust that everything has been taken care of, you
    have to go and look.

-   Unaccounted for Assets Discovered – At times you may discover an endpoint,
    or many endpoints, that you don’t have a record of. We’ve seen this range
    from a single server to an entire building’s worth of assets. Without proper
    asset management we’re blind to what we’re defending. Keep a record of what
    was discovered and why it went unaccounted for so you can close the gap on
    the asset itself as well as potentially improve the process for discovery.

-   Attacker Tools Discovered – Evidence that any type of attacker tool in the
    environment is something you should be keeping careful track of. If it might
    be seen in a Kali distro and it’s now in your environment, why is it there?
    Who put it there? When did it arrive? Even seeing an attacker tool being
    deleted from your antivirus logs could be worth investigating. AV did its
    job, but why was that being written to disk somewhere in the first place?

-   Malware Discovered – Speaking of malware. Proper investigation of why
    malware is present on endpoints in your organization can help you understand
    whether the attack is of a ‘spray and pray’ nature, or if your user was
    being targeted specifically. Understanding the difference can have a huge
    impact on how you respond.

-   Prohibited Protocols in Use – It’s incredibly common to hear thing like “We
    don’t allow Bit Torrent.” or “There is no Tor traffic on our network.” Only
    to discover that’s not the case just by looking at the sessions passing
    through the network. Discovering protocols you’ve prohibited can mean
    something as small as a policy violation to a full scale breach. Always
    inventory your protocols and any deviations from your allowed list.

Interesting Reads Regarding Hunting Metrics:

<https://medium.com/@jshlbrd/creating-tracking-threat-hunting-metrics-fc66e6b84076>

<https://theartofservice.com/cyber-threat-hunting-what-key-performance-indicators-will-you-be-measured-against.html>
