1.  Appendix

    1.  Example Threat Hunting Program Proposal

TBD

1.  Example Threat Assessment

In this example a threat hunter from a mid-sized retail organization will
execute a threat assessment using MITRE and ETDA.

**Who is targeting?**

Using MITRE Navigator and ETDA, the hunter can simply search for the word
“retail” as it applies to Groups and Threat Groups. Cross referencing the
results, the only adversaries that are listed in both MITRE and ETDA are FIN7
and FIN8. While all of the groups listed as targeting “retail” in either MITRE
or EDTA should be assessed, the threat hunter should prioritize the groups that
exist within both data sources first.

![Graphical user interface, applicationDescription automatically
generated](media/9fbddbfd57f16df0ff92722d2b05cdfa.png)

*Figure 20: Example Threat Assessment - MITRE Navigator for Retail Sector*

**What are they after?**

MITRE and ETDA have both FIN7 and FIN8 listed as financially motivated
adversaries.

**How bad would it be?**

Based on the data within ETDA and MITRE (at the time of writing), FIN7 attacks
have centered around payment card theft and ransomware both of which could
result in serious operational, financial, and reputational damages. Assessing
the timestamp data (at the time of writing) of the reference materials listed in
MITRE and ETDA, FIN7 has shifted their operations towards large scale ransomware
attacks.

Based on the data within ETDA and MITRE (at the time of writing), FIN8 attacks
have centered around payment card theft through point of sale (POS) malware
which could result in serious financial and reputational damages.

Assessing the timestamp data (at the time of writing) of the reference materials
listed in MITRE and ETDA, FIN7 has been more active than FIN8 and ransomware has
the potential impact to shut down business operations.

Based on the data available to the threat hunter, FIN7 should be prioritized.

**How would they do it?**

With a particular threat actor in mind, threat hunter can use MITRE Navigator to
visualize the techniques associated with FIN7 and can visualize the techniques
as they are used throughout the MITRE Tactics.

![TimelineDescription automatically
generated](media/e0c995e19d0064e861000b0932daf083.png)

*Figure 21: Example Threat Hunt - MITRE Navigator - TTPs*

Determining which technique to evaluate first may be determined by the size of
the threat hunting program. While there is value in prioritizing techniques
which present the most risk to the organization, it can develop into a long-time
assessment delaying the hunter from executing a hunt. Prioritizing based on the
sequential or reverse order of techniques based on the Tactic flow is a
reasonable option, but the threat hunting leaders should decide definitively how
hunters prioritize techniques.

In this example, the hunter will prioritize the techniques in sequential order
as the are laid out in the MITRE Tactic lifecycle.

Starting with Initial Access, FIN7 is associated with Phishing, Replication
Through Removable Media, and Valid Accounts

**Likelihood of Success**

While having a mapping of a relevant adversary to techniques and tactics is
valuable, there may be multiple ways a technique can be used in an attack, or
the associated technique may not be applicable to every organization. Hunters
can focus their efforts even further by using the resources within MITRE to
research specifically how FIN7 uses the associated technique.

The hunter assesses the three techniques and learns that their organization
disables the USB port on all of the workstations within the enterprise. While
not an undefeatable control, it does reduce the likelihood that FIN7 will gain
initial access through removable media. Next, the hunter checks the MITRE
technique mapping for FIN7 to determine how they are utilizing Valid Accounts.
Based on MITRE, FIN7 leverages Valid Accounts for lateral movement and not
initial access. This does not mean that FIN7 does not ever or will never
leverage Valid Accounts for initial access, but this allows the hunter to
de-prioritize this technique for FIN7 based on the intelligence available.

![](media/71d17459eb1a8998403d8a62494d8faa.png)

*Figure 22: Example Threat Assessment - assessing likelihood*

Within Phishing, FIN7 has associations with Spearphishing Attachment and
Spearphishing Link. Based on the hunter’s understanding of the organization’s
security controls, they feel that both techniques are equally likelihood to
succeed however based on the reference material within MITRE, FIN7 has been most
recently (at the time of writing) attributed to carrying out an attack using
Spearphishing Link.

Based on the threat assessment, the hunter has been able to identify which
adversary is most likely to be associated with an attack against their
organization, what their goals will be, and what techniques they should hunt for
first.

1.  Example Threat Hunt Goal

Leveraging SMART to build threat hunting goals is not a requirement but it does
provide easy to understand criteria to ensure that hunts are effective,
efficient, and easy to operationalize.

Consider the following example in building a SMART goal from a weak goal.

Goal: Detect evidence of ProxyLogon

Assessment: ProxyLogon is the generic name for CVE-2021-26855, the vulnerability
that enables attackers to bypass authentication. ProxyLogon is often chained
together with CVE-2021-26857, CVE-2021-26858, CVE-2021-27065 which were
initially used by the HAFNIUM group to compromise Exchange servers. At its core
CVE-2021-26855 enables a remote adversary to bypass the authentication
mechanisms within Exchange and perform actions packed within a specially crafted
HTTP request with the highest privileges. Given the versatility of the
vulnerability adversaries are able to execute requests against various services
with Exchange however, threat intelligence shows that adversaries have leveraged
the vulnerability to access user mailboxes and upload web shells.

Based on the understanding of ProxyLogon, depending on which component of the
exploit or variation of the exploit the hunter is targeting, the required data
sources and hunt strategy may vary adding ambiguity to the hunt.

The hunter can strengthen this goal by adding criteria to make it more specific
to a specific component of the vulnerability or behaviors resident within
different implementations of the exploit.

**Specific**: Detect successful exploitation of CVE-2021-26855 & CVE-2021-27065
via the Metasploit ProxyLogon RCE resulting in the introduction of a web shell
on a Exchange server.

Assessment: While the hunter has added adequate specificity to ensure the hunt
remains hyper focused on a specific activity, there are no metrics specified to
determine when the goal is complete.

The hunt can strengthen this goal by adding criteria that would clearly define
when the goal of the hunt has been accomplished.

**Measurable**: Detect successful exploitation of CVE-2021-26855 &
CVE-2021-27065 via the Metasploit ProxyLogon RCE resulting in the introduction
of a web shell through analysis of at least 7 days of file activity data of all
Exchange servers in the XYZ North American domain.

Assessment: When setting this goal, the hunter must consider the likelihood of
success based upon the measurements of success outlined in the goal. If the
criteria listed in the goal creates an impossible situation for success, the
hunter should revise the goal.

**Achievable**: Does the threat hunt team have access to 7 days’ worth of file
activity data for Exchange servers in the XYZ North American domain?

Assessment: The hunter now has an achievable goal that is measurable and using
specific criteria however the threat hunter must still consider whether the goal
is relevant to the organization and the threat hunting program’s mission
statement.

**Relevant**: Does the organization use Microsoft Exchange for email? Is the
Exchange deployment on premises or in the cloud? If the organization uses
Microsoft Exchange, are the servers patched? Are there existing automated
detections designed to alert on the same behaviors specified in the goal? Is the
threat hunting program responsible for hunting in the XYZ north American domain?

Assessment: Confirming the relevancy the hunter now possesses a well-structured
goal however without including a time component, the goal risks losing any sort
of urgency for completion.

**Time-Based:** By June 23, 2022 assess at least 7 days of file activity data of
all Exchange servers in the XYZ North American domain for evidence of successful
exploitation of CVE-2021-26855 & CVE-2021-27065 via the Metasploit ProxyLogon
RCE resulting in the introduction of a web shell.

1.  Example Threat Hunt

Remote Transfers using BITSAdmin

In Context of APT10

1.  Document Control

| Title            | Remote Transfers using BITSAdmin  |
|------------------|-----------------------------------|
| Created          | 2022-02-17                        |
| Document Version | 0.1                               |
| Last Updated     |                                   |
| Document Owner   |                                   |
| Change Reviewers |                                   |

Revision History

| Version | Date | Name | Changes |
|---------|------|------|---------|
|         |      |      |         |

1.  Goal

Detect malicious transfers associated with bitsadmins.exe being used to download
content from a remote host residing outside of the \<clients\> network.

1.  Hypothesis

Given an adversary leverages BITS to send or receive data with a local or remote
host. When the bits job executes, a windows event log entry using EID 59/60 will
be written containing the URL to the host.

1.  Validate Data

-   The detection of BITSAdmin requires the ingestion of WEL 59/60 in the BITS
    event log

    -   EventID 59 - BITS started the \<jobname\> transfer job that is
        associated with http://example.com URL.

    -   EventID 60 - BITS stopped transferring the \<jobname\> transfer job that
        is associated with the http://example.com URL. The status code is 0xxxx.

-   2021-12-14 BITS Windows event logs are currently not being ingested into the
    centralized SIEM. Threat Hunting team working with the security team to
    enable data logging and storage. Ticket Number 1234 has been created

-   2021-12-15 Ticket Number 1234 resolved. BITS Windows event log 59 and 60 is
    currently ingested into the centralized SIEM. Potential blind spots may
    occur within the organization that are related BITSAdmin process due to
    events only being ingested from the North American domain not the European.

1.  Create Test Data

Validation for the BitsAdmin condition can occur by performing the following
execution on a Windows system:

Bitsadmin.exe /create 1 bitsadmin.exe /addfile 1
https://live.sysinternals.com/autoruns.exe c:\\data\\playfolder\\autoruns.exe
bitsadmin.exe /RESUME 1 bitsadmin /complete 1

1.  Define Hunt Strategy

Look for transfer jobs within the Microsoft-Windows-Bits-Client EventID 59.
Identify URL that fall outside normal operation such as Google, Microsoft,
Adobe, and WindowsLive. Additionally look for stopped transfer jobs within
EventID 60, which also contains the URL and the object being transferred.

BITS stopped transferring the evil.png transfer job that is associated with the
<https://i.imgur.com/evil.png> URL. The status code is 0x0.

1.  Validate Hunt

-   2021-12-15 – Hunt has been tested against a small subset of data and test
    data has been found. 200 False positives discovered related to third party
    programs such as browsers. Baseline has been adjusted to filter unrelated
    data.

-   2021-12-15 Hunt has been tested against a small subset of data and test data
    has been found .50 False positives discovered related to known good
    processes. Baseline has been adjusted to filter unrelated data.

-   2021-12-22 – Hunt has been tested against a small test environment and test
    data has been found. False positives have not been discovered nor any hits
    for malicious activities

-   2022-01-22 – Hunt has been tested against a large test environment and test
    data has been found. 15 False positives discovered relating to program
    setup. Baseline has been adjusted to filter unrelated data

-   2022-02-22 – Hunt has been tested against a large subset of data in the
    environment and test data has been found. No false positives discovered,
    only test data remains. Able to be pushed to production.

1.  Document Findings

-   2021-12-14 BITS Windows event logs are currently not being ingested into the
    centralized SIEM. Threat Hunting team working with the security team to
    enable data logging and storage. Ticket Number 1234 has been created

-   2021-12-15 Ticket Number 1234 resolved. BITS Windows event log 59 and 60 is
    currently ingested into the centralized SIEM. Potential blind spots may
    occur within the organization that are related BITSAdmin process due to
    events only being ingested from the North American domain not the European

-   2021-12-15 – Detection of possible malicious transfers identified on the
    hosts XFIR_Banshee

    -   Ticket 778 has been created to research URL and consult with Admins to
        determine if the transfers are legitimate. bitsadmin /transfer
        myDownloadJob /download /priority normal https://downloadsrv/10mb.zip
        c:\\\\10mb.zip

    -   Ticket 778 has been resolved. Determined as a false positive due to
        administrative activities.

    -   Baseline has been tuned to adjust hunt. False positive has been
        documented.

-   .

-   2021-12-15 – Ticket 123 has been submitted to SOC to convert this hunt into
    an automated detection.

-   2021-12-18 SOC has updated Ticket 123 with their ADS documentation for
    approval

-   2021-12-20 Hunt team approves SOC ADS

-   2021-12- 20 Hunt successfully converted to ADS on this date, with ticket
    123\. Hunt closed.

1.  References

Phishing Campaign Leveraging BitsAdmin:
https://unit42.paloaltonetworks.com/unit42-unique-office-loader-deploying-multiple-malware-families/

BITS used to download malware:
https://www.secureworks.com/blog/malware-lingers-with-bits

https://isc.sans.edu/forums/diary/Microsoft+BITS+Used+to+Download+Payloads/21027/

https://marcoramilli.com/2018/08/31/hacking-the-hacker-stopping-a-big-botnet-targeting-usa-canada-and-italy/
