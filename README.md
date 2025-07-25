  # DevSecOps = Development + Security + Operations: Theory, Techniques, and Tools
An ongoing & curated collection of awesome software best practices and techniques, libraries and frameworks, E-books and videos, websites, blog posts, links to github Repositories, technical guidelines and important resources about DevSecOps in Cybersecurity.
> Thanks to all contributors, you're awesome and wouldn't be possible without you! Our goal is to build a categorized community-driven collection of very well-known resources.

## `What is DevSecOps`
[DevSecOps](https://www.ibm.com/cloud/learn/devsecops)—short for *development, security, and operations*—automates the integration of security at every phase of the software development lifecycle, from initial design through integration, testing, deployment, and software delivery.

![devsecops sdlc](https://github.com/paulveillard/cybersecurity-devsecops/blob/main/devsecops-sdlc.png)

>DevSecOps makes application and infrastructure security a shared responsibility of development, security, and IT operations teams, rather than the sole responsibility of a security silo. It enables “software, safer, sooner”—the DevSecOps motto–by automating the delivery of secure software without slowing the software development cycle.

DevSecOps is important for the following key reasons: *speed, and security*
* Rapid, cost-effective software delivery
* Improved, proactive security
* Accelerated security vulnerability patching
* Automation compatible with modern development
* A repeatable and adaptive process

## `Table of Contents`
- [Introduction](#introduction)
  - [Manifesto](#manifesto)
  - [Guidelines](#guidelines)
  - [Presentations](#presentations)
  - [Initiatives](#initiatives)
  - [Keeping Informed](#keeping-informed)
  - [Wardley Maps for Security](#wardley-maps-for-security)
- [Training](#training)
  - [Labs](#labs)
  - [Vulnerable Test Targets](#vulnerable-test-targets)
  - [Conferences](#conferences)
  - [Podcasts](#podcasts)
  - [Books](#books)
- [Tools](#tools)
  - [Dashboards](#dashboards)
  - [Automation](#automation)
  - [Hunting](#hunting)
  - [Testing](#testing)
  - [Alerting](#alerting)
  - [Threat Intelligence](#threat-intelligence)
  - [Attack Modeling](#attack-modeling)
  - [Secret Management](#secret-management)
  - [Red Team](#red-team)
  - [Visualization](#visualization)
  - [Sharing](#sharing)
  - [ChatOps](#chatops)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->


# `Introduction`
> “The purpose and intent of DevSecOps is to build on the mindset that everyone is responsible for security with the goal of safely distributing security decisions at speed and scale to those who hold the highest level of context without sacrificing the safety required,” describes Shannon Lietz, co-author of the “DevSecOps Manifesto.”  
* This collection has been pulled together and includes: Podcasts, Videos, Presentations, and other Media to help you learn more about DevSecOps, SecDevOps, DevOpsSec, and/or DevOps + Security.

Across the entire software development lifecycle, these are the core stages involved, as well as the security activities required at each stage.
<p align="center">
  <img src="https://github.com/paulveillard/cybersecurity-devsecops/blob/main/img/secure-sldc.png?raw=true" alt="Sublime's custom image"/>
</p>


## `Manifesto`
* [DevSecOps Manifesto](https://www.devsecops.org/)
* [Best practices for DevSecOps](https://www.ibm.com/cloud/learn/devsecops#toc-best-pract-yeQPSJ8K)

## `Guidelines`
While we're not into the paper-way of doing things, sharing sound advice and good recommendations can make software stronger.  We aim to make these guidelines better through code.

* [Introduction to DevSecOps - DZone Refcard](https://dzone.com/refcardz/introduction-to-devsecops)
* [Security Champions Playbook](https://github.com/c0rdis/security-champions-playbook)
* [Security Guide for Web Developers](https://github.com/FallibleInc/security-guide-for-developers)
* [A practical guide to build DAST with OWASP Zap](https://github.com/Soluto/owasp-zap-glue-ci-images)
* [Introduction to security testing and tools](https://www.omerlh.info/2018/10/04/write-good-code-with-security-tests/)
* [DevSecOps Hub](https://snyk.io/devsecops/)


## `Presentations`
Many talks are now targeting the change of adding Security into the DevOps environment.  We've added some of the most notable ones here.    

* [DevSecOps: Taking a DevOps Approach to Security](https://www.slideshare.net/AlertLogic/alert-logic-and-chef-dev-ops-webinar)
* [Mozilla's Test Driven Security in Continuous Integration](https://www.youtube.com/watch?v=e2axToBYD68)
* [Security DevOps - staying secure in agile projects](https://christian-schneider.net/slides/OWASP-AppSecEU-2015_SecDevOps.pdf)
* [Veracode's Defending the Cloud from a Full Stack Hack](https://www.rsaconference.com/writable/presentations/file_upload/csv-w03-_defending-the-cloud-from-the-full-stack-hack.pdf)
* [Put Your Robots to Work: Security Automation at Twitter](https://vimeo.com/54250716)
* [The Three Faces of DevSecOps](https://www.infoq.com/presentations/devsecops-2019/)


## Initiatives
There are a variety of initiatives underway to migrate security and compliance into DevOps.  We've included links for active projects here:

* [AWS Labs](https://github.com/awslabs)
* [DevOps and Audit Resources](https://itsanicelife.com/2017/03/13/devops-and-audit-resources/)
* [DevSecOps](http://devsecops.org)
* [OpenDevSecOps](https://opendevsecops.org)
* [Rugged DevOps](http://www.ruggedsoftware.org)

**[`^        back to top        ^`](#)**

## Keeping Informed
We've discovered a treasure trove of mailing lists and newsletters where DevSecOps like us are sharing their skills and insights.  

* [AWS Security](https://aws.amazon.com/security/)
* [Azure Security](https://azure.microsoft.com/en-us/overview/security/)
* [Ruby Weekly](http://rubyweekly.com)
* [Security Newsletter](https://securitynewsletter.co/)
* [SRE Weekly](https://sreweekly.com/)

**[`^        back to top        ^`](#)**

## Wardley Maps for Security
One way for people to continue to evolve their capabilities and share common understanding is through the development of Wardley Maps.  We're collecting this information and providing some good examples here.

* [Check out Figure 6 for Comparisons](http://www.cio.co.uk/it-strategy/introduction-wardley-value-chain-mapping-3604565/)
* [DevSecOps Repo for Security Maps](https://github.com/devsecops/wardley-maps)
* [Introduction to Wardley Maps](http://blog.gardeviance.org/2015/02/an-introduction-to-wardley-value-chain.html)
* [Security Industry Example](http://blog.gardeviance.org/2014_08_01_archive.html)
* [SOC Value Chain & Delivery Models](http://blog.blackswansecurity.com/2016/01/soc-value-chain-delivery-models/)

**[`^        back to top        ^`](#)**

# Training
DevSecOps requires an appetite for learning and agility to quickly acquire new skills.  We've collected these links to help you learn how to do DevSecOps with us.

## Labs
Labs are hands-on learning opportunities to grow your skills in Dev, Sec, and Ops.  All skills are useful and need to be grown so that you can have the empathy, knowledge and trade to operate DevSecOps style.

* [DevSecOps Bootcamp](https://github.com/devsecops/bootcamp)
* [Exercism](http://exercism.io/)
* [Infoseclabs](http://www.infoseclabs.net)
* [Infrastructure Monitoring](https://github.com/appsecco/defcon24-infra-monitoring-workshop)
* [Pentester Lab](https://pentesterlab.com/exercises/)
* [Vulnhub](https://www.vulnhub.com/)

**[`^        back to top        ^`](#)**

## Vulnerable Test Targets
It's important to build up knowledge by learning how to break applications left vulnerable by security mistakes.  This section contains a list of vulnerable apps that can be deployed to learn what not to do.  These same apps can be made safe by remediating the intentional vulnerabilities to learn how to prevent attackers from gaining access to underlying infrastructure or data.

* [Damn Vulnerable Web Application](https://github.com/ethicalhack3r/DVWA) (PHP/MySQL)
* [LambHack](https://github.com/wickett/lambhack) (Lambda)
* [Metasploitable](https://community.rapid7.com/docs/DOC-1875) (Linux)
* [Mutillidae](http://www.irongeek.com/i.php?page=mutillidae/mutillidae-deliberately-vulnerable-php-owasp-top-10) (PHP)
* [NodeGoat](https://github.com/owasp/nodegoat) (Node)
* [OWASP Damn Vulnerable Serverless Application (DVSA)](https://github.com/owasp/dvsa) (AWS Serverless)
* [OWASP Juice Shop](https://github.com/OWASP/glue) (NodeJS/Angular)
* [RailsGoat](https://github.com/OWASP/railsgoat) (Rails)
* [WebGoat](https://github.com/WebGoat/WebGoat) (Web App)
* [WebGoat.Net](https://github.com/OWASP/WebGoat.NET) (.NET)
* [WebGoatPHP](https://github.com/OWASP/OWASPWebGoatPHP) (PHP)

**[`^        back to top        ^`](#)**

##  `Conferences `
A body of knowledge for combining DevOps and Security has been delivered via conferences and meetups.  This is a short list of the venues that have dedicated a portion of their agenda to it.

* [AWS re:Inforce](https://reinforce.awsevents.com/)
* [AWS re:Invent](https://reinvent.awsevents.com)
* [DevSecCon](http://devseccon.com)
* [DevOps Connect](http://www.devopsconnect.com/)
* [DevOps Days](http://www.devopsdays.org/)
* [Goto Conference](http://gotocon.com)
* [IP Expo](http://www.ipexpoeurope.com/)
* [ISACA Ireland](http://www.isaca.org/chapters5/Ireland/conference/pages/Agenda.aspx)
* [RSA Conference](http://www.rsaconference.com)
* [All Day DevOps](https://www.alldaydevops.com/)


**[`^        back to top        ^`](#)**

##  `Podcasts `
A small collection of DevOps and Security podcasts.

* [Arrested DevOps](https://www.arresteddevops.com/)
* [Brakeing Down Security Podcast](http://www.brakeingsecurity.com/)
* [Darknet Diaries](https://darknetdiaries.com)
* [Defensive Security Podcast](http://www.defensivesecurity.org/)
* [DevOps Cafe](http://devopscafe.org/)
* [Down The Security Rabbithole](http://podcast.wh1t3rabbit.net/)
* [Food Fight Show](http://foodfightshow.org/)
* [OWASP 24/7](https://www.owasp.org/index.php/OWASP_Podcast)
* [Risky Business](http://risky.biz/)
* [Social Engineering Podcast](http://www.social-engineer.org/category/podcast/)
* [Software Engineering Radio](http://www.se-radio.net/team/kim-carter/)
* [Take 1 Security Podcast](https://danielmiessler.com/podcast/)
* [Tenable Security Podcast](http://www.tenable.com/podcast)
* [The Secure Developer](http://www.heavybit.com/library/podcasts/the-secure-developer/)
* [Trusted Sec Podcast](https://www.trustedsec.com/podcast/)

**[`^        back to top        ^`](#)**

##  `Books `
Books focussed around DevSecOps, bringing the security focus up front.

* [DevOpsSec](http://www.oreilly.com/webops-perf/free/devopssec.csp)
* [Docker Securitiy - Quick Reference](https://binarymist.io/publication/docker-security/)
* [Holistic Info-Sec for Web Developers](https://leanpub.com/b/holisticinfosecforwebdevelopers)
* [Securing DevOps](https://securing-devops.com/book)
* [The DevOps Handbook (Section VI)](https://www.oreilly.com/library/view/the-devops-handbook/9781457191381/)

#  `Tools `
This collection of tools are useful in establishing a DevSecOps platform.  We have divided the tools into several categories that help with the different divisions of DevSecOps.

## `Dashboards`
Visualization is an important element of identifying, sharing and evolving the security information that passes from the beginning of the creative process through to operations.

* [Grafana](http://grafana.org/)
* [Kibana](https://www.elastic.co/products/kibana)

## `Automation`
Automation platforms have an advantage of providing for scripted remediation when security defects are surfaced.

* [Demisto](https://www.demisto.com/community/)
* [OWASP Glue](https://github.com/OWASP/glue)
* [StackStorm](https://github.com/StackStorm/st2)
* [Insider CLI](https://github.com/insidersec/insider)

## Hunting
This list of tools provide the capabilities necessary for finding security anomalies and identifying rules that should be automated and extended to support scale demands.

* [GRR](https://github.com/google/grr)
* [kube-hunter](https://github.com/aquasecurity/kube-hunter)
* [mig](https://github.com/mozilla/mig)
* [Mirador](http://fathom.info/mirador/)
* [moloch](https://github.com/aol/moloch)
* [MozDef](https://github.com/mozilla/MozDef)
* [osquery](https://osquery.io/)
* [OSSEC](http://ossec.github.io/)
* [osxcollector](https://github.com/Yelp/osxcollector)


## Testing
Testing is an essential element of a DevSecOps program because it helps to prepare teams for Rugged operations and to determine security defects before they can be exploited.

* [Brakeman](http://brakemanscanner.org)
* [Checkov](https://github.com/bridgecrewio/checkov/)
* [Chef Inspec](https://github.com/chef/inspec)
* [Contrast Security](https://www.contrastsecurity.com)
* [Cohesion](https://secapps.com/cohesion)
* [David](https://david-dm.org/)
* [Deepfence ThreatMapper](https://github.com/deepfence/ThreatMapper)
* [Gauntlt](http://gauntlt.org/)
* [Hakiri](https://hakiri.io)
* [HusckyCI](https://github.com/globocom/huskyci)
* [Infer](http://fbinfer.com/)
* [IronWASP](https://ironwasp.org/)
* [kube-bench](https://github.com/aquasecurity/kube-bench)
* [Lynis](https://cisofy.com/lynis/)
* [microscanner](https://github.com/aquasecurity/microscanner)
* [Node Security Platform](https://nodesecurity.io/)
* [npm-check](https://www.npmjs.com/package/npm-check)
* [npm-outdated](https://docs.npmjs.com/cli/outdated)
* [OSS Fuzz](https://github.com/google/oss-fuzz)
* [OWASP OWTF](https://www.owasp.org/index.php/OWASP_OWTF)
* [OWASP ZAP](https://www.owasp.org/index.php/OWASP_Zed_Attack_Proxy_Project)
* [OWASP ZAP Node API](https://github.com/zaproxy/zap-api-nodejs)
* [Progpilot](https://github.com/designsecurity/progpilot)
* [PureSec (Serverless Security)](https://www.puresec.io/)
* [RetireJS](https://github.com/RetireJS/retire.js)
* [RIPS](http://rips-scanner.sourceforge.net/)
* [ShiftLeft Scan](https://slscan.io)
* [Snyk](https://snyk.io)
* [Vulert](vulert.com)
* [SourceClear](https://www.sourceclear.com)

**[`^        back to top        ^`](#)**


## Alerting
Once you discover something important, response time is critical and essential to the Incident Response required to remediate a security defect.  These links include some of the projects that provide for Alerting and Notifications.

* [411](https://github.com/kiwiz/411)
* [Alerta](https://github.com/guardian/alerta)
* [Elastalert](https://github.com/yelp/elastalert)
* [MozDef](https://github.com/mozilla/MozDef)

## Threat Intelligence
There are many sources for Threat Intelligence in the world.  Some of these come from IP Intelligence and others from Malware repositories.  This category contains tools that are useful in capturing threat intelligence and collating it.

* [Alien Vault OTX](https://otx.alienvault.com/)
* [Critical Stack](https://intel.criticalstack.com)
* [IBM X-Force](https://exchange.xforce.ibmcloud.com)
* [IntelMQ Feeds](https://github.com/certtools/intelmq-feeds-documentation)
* [OpenTPX](https://www.opentpx.org)
* [Passive Total](https://www.passivetotal.org)
* [STIX, TAXII](https://oasis-open.github.io/cti-documentation/)
* [Threat Connect](https://threatconnect.com/)

**[`^        back to top        ^`](#)**

## Attack Modeling
DevSecOps requires a common attack modeling capability that can be done at speed and scale.  Thankfully there are efforts underway to create these useful taxonomies that help us operationalize attack modeling and defenses.

* [CAPEC](https://capec.mitre.org)
* [IriusRisk](https://www.continuumsecurity.net/threat-modeling-tool/)
* [Larry Osterman's Threat Modeling](https://blogs.msdn.microsoft.com/larryosterman/2007/10/01/some-final-thoughts-on-threat-modeling/)
* [SDL Threat Modeling Tool](https://www.microsoft.com/en-us/sdl/adopt/threatmodeling.aspx)
* [SeaSponge](http://mozilla.github.io/seasponge/)
* [Threat Risk Modeling](https://www.owasp.org/index.php/Threat_Risk_Modeling)

## Secret Management
To support security as code, sensitive credentials and secrets need to be managed, security, maintained and rotated using automation.  The projects below provide DevOps teams with some good options for securing sensitive details used in building and deploying full stack software deployments.

* [BlackBox](https://github.com/StackExchange/blackbox)
* [Conjur](https://github.com/cyberark/conjur)
* [CredStash](https://github.com/fugue/credstash)
* [Git Secrets](https://github.com/awslabs/git-secrets)
* [Keybase](https://keybase.io)
* [Sops](https://github.com/mozilla/sops)
* [Transcrypt](https://github.com/elasticdog/transcrypt)
* [Vault](https://www.hashicorp.com/blog/vault.html)

**[`^        back to top        ^`](#)**

## Red Team
These are tools that we find helpful during Red Team and War Game exercises.  The projects in this section help with reconnaissance, exploit development, and other activities common within the Kill Chain.

* [EyeWitness](https://github.com/ChrisTruncer/EyeWitness)
* [Hound](https://github.com/etsy/hound)


## Visualization
Making DevSecOps discoveries is already hard enough with all the APIs and Command Line tools.  This list provides tools to visualize your work either via flowcharts, graphs or maps.

* [Gephi](https://gephi.org)
* [ShadowBuster](https://github.com/indeedops/ShadowBuster)
* [Wazuh](https://wazuh.com/)

## `Sharing`
A collection of tools to help with sharing knowledge and telling the story.

* [Gitbook](https://www.gitbook.com)
* [Speaker Deck](https://speakerdeck.com)


## `ChatOps`
One of the greatest changes you can make in your organization is boundaryless communications.  Setting up ChatOps can enable everyone to come together and solve problems.

* [Gitter](https://gitter.im)
* [HipChat](https://hipchat.com)
* [MatterMost](https://mattermost.com/)
* [Riot](https://riot.im/)
* [Slack](https://slack.com)



**[`^        back to top        ^`](#)**

## `License`
MIT License & [cc](https://creativecommons.org/licenses/by/4.0/) license

<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International License</a>.

To the extent possible under law, [Paul Veillard](https://github.com/paulveillard/) has waived all copyright and related or neighboring rights to this work.
