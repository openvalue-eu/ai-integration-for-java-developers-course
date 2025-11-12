# TODO new curriculum 2025.1

This branch exists to ensure our material adheres to the new [2025.1](https://github.com/isaqb-org/curriculum-foundation/releases/tag/2025.1-RC8) curriculum.

The new curriculum is explained in:

- [The GitHub page for 2025.1-RC8](https://github.com/isaqb-org/curriculum-foundation/releases/tag/2025.1-RC8)
- [The curriculum document containing all learning goals](https://github.com/isaqb-org/curriculum-foundation/releases/download/2025.1-RC8/curriculum-foundation-en.pdf).
- [The visual overview of the mapping from the current to the new curriculum](https://raw.githubusercontent.com/isaqb-org/curriculum-foundation/refs/tags/2025.1-RC8/documentation/Mapping-2023-2025-draft.drawio.png).

## A new structure

The new version is structured along the fundamental activities and responsibilities of software architecture as a role, preceeded by some basic concepts, defined as ‘sections’:

- **Section 1**: Basic concepts.
- **Section 2**: Clarifying stakeholder requirements and constraints.
- **Section 3**: Designing and developing software architectures, taking structural and conceptual decisions.
- **Section 4**: Communicating and documenting the architecture for various stakeholders.
- **Section 5**: Analyzing and assessing software architectures.
- **Section 6**: Examples of software architectures.

## Where to find learning goal contents

Each learning goals is part of one of the new sections, and their content is written down in separate documents, rooted under the [2025.1-RC8 docs folder](https://github.com/isaqb-org/curriculum-foundation/tree/2025.1-RC8/docs), e.g. [LG-01-01](https://github.com/isaqb-org/curriculum-foundation/blob/2025.1-RC8/docs/01-basics/LG-01-01.adoc), and [LG-01-02](https://github.com/isaqb-org/curriculum-foundation/blob/2025.1-RC8/docs/01-basics/LG-01-02.adoc).

This documents contain both the German and English descriptions of the learning goal.

## Work to be done

To move the curriculum, we need to do the following:

- [x] Remove LG 1-10 content.
- [x] Replace old section descriptions with new ones.
- [x] Replace old section ratio image with new one.
- [x] Rename LG 1-1 to LG 01-01.
- [x] Replace LG 1-1 learning goal descriptions with LG 01-01 content.
- [x] Rename LG 1-2 to LG 01-02.
- [x] Replace LG 1-2 learning goal descriptions with LG 01-02 content.
- [x] Rename LG 1-3 to LG 01-03.
- [x] Replace LG 1-3 learning goal descriptions with LG 01-03 content.
- [x] Rename LG 1-4 to LG 01-04.
- [x] Replace LG 1-4 learning goal descriptions with LG 01-04 content.
- [x] Consider adding content to LG 01-04, see remarks by Wouter Oet: _“Added the architectural domains: data architecture: semantics and organization of data; system architecture (can have various semantics, depending on the definition of "system")”_
- [x] Rename LG 1-9 to LG 01-05.
- [x] Replace LG 1-9 learning goal descriptions with LG 01-05 content.
- [x] Rename LG 1-5 to LG 01-06.
- [x] Replace LG 1-5 learning goal descriptions with LG 01-06 content.
- [x] Create new LG 01-07 slides.
- [x] Add new topic placeholders to LG 01-07 slides.
- [x] Create new LG 01-07 content or (partly) copy it from existing content.
  - [ ] To the reviewer from BJ: this feels a bit out of place here. I moved it to day 2.
- [x] Rename LG 1-7 to LG 02-01.
- [x] Replace LG 1-7 learning goal descriptions with LG 02-01 content.
- [x] Add new LG 02-01 content or (partly) copy it from existing content.
  - [ ] To the Reviewer from JH: The fact that this LG has been worded more broadly now makes it come very close to LG 01-06. We don't want to repeat everything from that section here again. So I decided to keep the focus on the short- vs long-term goals here and only relate a little bit to the other goals.
- [x] Rename LG 1-8 to LG 02-05.
- [x] Replace LG 1-8 learning goal descriptions with LG 02-05 content.
- [x] Rename LG 2-3 to LG 02-02.
- [x] Replace LG 2-3 learning goal descriptions with LG 02-02 content.
- [x] Rename LG 4-1 to LG 02-03.
- [x] Replace LG 4-1 learning goal descriptions with LG 02-03 content.
- [x] Copy LG 4-2, LG 4-2, LG 4-4, and LG 2-8 contents into LG 02-04.
- [x] Use copied LG 02-04 content as a basis to create new content. See remarks by Wouter Oet: _“Changed but effectively new”_
  - [ ] To the Reviewer from JH: I cannot find any mention of Quality Trees anymore in the curriculum document. I assumed this means we can leave that somewhat confusing topic out of this LG. I replaced it with a back-reference to using Quality Standards such as ISO 9126/25010.
- [x] Copy LG 4-3 and LG 4-4 contents into LG 03-01.
- [x] Use copied LG 03-01 content as a basis to create new content.
  - [ ] To the Reviewer from JH: Decided to move the Architectural Tactics part into this LG. I'm not sure why they believe LG4-3 and LG4-4 would fit in this LG
- [x] Rename LG 2-2 to LG 03-02.
- [x] Replace LG 2-2 learning goal descriptions with LG 03-02 content.
- [x] For LG 03-03, process remarks by Wouter Oet: _“Iterative and incremental design was dropped, remove LG reference, keep sheets”_
  - [ ] To the Reviewer from JH: I decided to remove the I&I-slides from the LG03-03 topic. The new curriculum does not mention I&I in this list of approaches anymore and to be honest, people often had trouble with this bit. Especially when trying to explain the "difference" between Iterative & Incremental, while they basically go hand in hand. The LG 03-05 does still mention I&I and relates it to feedback loops & risks. I feel this is the right place and I also feel this is enough for this course. I&I should be a well-known concept to anyone participating in the course. (This also takes a couple of "duplicate" slides out of the material, freeing up some needed space for the case).
- [x] Rename LG 2-1 to LG 03-03.
- [x] Replace LG 2-1 learning goal descriptions with LG 03-03 content.
- [x] Rename LG 1-6 to LG 03-05.
- [x] Replace LG 1-6 learning goal descriptions with LG 03-05 content.
- [x] Rename LG 2-6 to LG 03-04.
- [x] Replace LG 2-6 learning goal descriptions with LG 03-04 content.
- [x] For LG 03-06, process remarks by Wouter Oet: _“Introducing forms of coupling (efferent and afferent coupling)”_
  - [ ] To the Reviewer from JH: Honestly, I hate this terminology being introduced. But since it's rated R1, the terms may come up in the exam. Apparently SonarQube actually reports these numbers, but I would have preferred the terms incoming/outgoing.
- [x] Rename LG 2-7 to LG 03-06.
- [x] Replace LG 2-7 learning goal descriptions with LG 03-06 content.
- [x] For LG 03-04, process remarks by Wouter Oet: _“SOLID references may be removed, Complexity reduction as the driving factor behind KISS, YAGNI, and CUPID”_
  - [ ] To the Reviewer from JH: Not sure what Wouter meant by removing SOLID-references. Since Open/Closed (R1), Dependency Inversion (R1) _and_ Liskov Substitution (R3) are still mentioned in the curriculum, I decided to leave the SOLID-slides in as is.
- [x] Rename LG 2-9 to LG 03-07.
- [x] Replace LG 2-9 learning goal descriptions with LG 03-07 content.
- [x] Rename LG 2-5 to LG 03-07.
- [x] For LG 03-06, process remarks by Wouter Oet: _“Added: Liskov's substitution principle”_
  - [ ] To the Reviewer from JH: Not sure what this means. Liskov is mentioned in LG03-04 and not in LG03-06. I also cannot find any TODOs in LG03-06, considering this point "taken care of".
- [x] Replace LG 2-5 learning goal descriptions with LG 03-09 content.
- [x] Create LG 03-09 placeholder slides.
- [x] Determine what old LG 2-5 content needs to end up in LG 03-08 and what in LG 03-09, and determine what else to add or scrap.
- [x] For LG 03-08, process remarks by Wouter Oet: _“Many examples moved to LG 03-09 and a generic 'Integration and messaging patterns' catch all was added”_
  - [ ] To the Reviewer from JH: I moved the "Design Patterns" to LG03-09 and added a little slide there to introduce the difference between architectural and design patterns. This feels somewhat arbitrary, but it puts a welcome break in between all the MORE MORE MORE patterns-slides.
  - [ ] To the Reviewer from JH: I also restructured the slides of the Layers, Pipe & Filters, Microservices and Dependency Injection slides to reflect the nature of patterns. It always bothered me that each pattern was portrayed differently, which goes against the nature of patterns ^_^
- [x] Rename LG 2-4 to LG 03-10.
- [x] Replace LG 2-4 learning goal descriptions with LG 03-10 content.
- [x] For LG 03-10, process remarks by Wouter Oet: _“Added: identify such cross-cutting concerns”_
  - [ ] To the Reviewer from JH: I think the slides include enough examples to help with identifying CCCs. I think it's important for trainers to provide enough examples.
- [x] Rename LG 2-10 to LG 03-11.
- [x] Replace LG 2-10 learning goal descriptions with LG 03-11 content.
- [x] Rename LG 1-11 to LG 03-12.
- [x] Replace LG 1-11 learning goal descriptions with LG 03-12 content.
- [x] Rename LG 3-1 to LG 04-01.
- [x] Replace LG 3-1 learning goal descriptions with LG 04-01 content.
- [x] Rename LG 3-2 to LG 04-02.
- [x] Replace LG 3-2 learning goal descriptions with LG 04-02 content.
- [x] Rename LG 3-3 to LG 04-03.
- [x] Replace LG 3-3 learning goal descriptions with LG 04-03 content.
- [x] Consider adding SysML and C4 examples to LG 04-03, since they are explicitly mentioned in the new curriculum overview.
  - [ ] To the Reviewer from JH: I decided to remove the Composite Structure Diagram from the UML examples. I've always felt it's a bit of an outlier and there are plenty of other useful diagrams in the material, so this is a bit of a slimming down here.
  - [ ] To the Reviewer from JH: I did not add a specific example diagram from SysML. The SysML diagrams are very similar to UML, with some other names for some elements and a few stricter definitions. I've added this info as a SysML vs UML slide and think that should suffice.
- [x] Create new LG 04-04 slides.
- [x] Add new topic placeholders to LG 04-04 slides.
- [x] Create new LG 04-04 content.
  - [ ] To the Reviewer from JH: I'm not a 100% clear what the iSAQB wants to communicate with this LG, but I thought it was a good way to add in the "personal resilience" since architects deal a lot with humans.
- [x] Copy LG 3-4 and LG 3-5 contents into LG 04-05.
- [x] Use copied LG 04-05 content as a basis to create new content.
- [x] For LG 04-05, process remarks by Wouter Oet: _“Context view is explained in more detail.”_
  - [ ] To the Reviewer from JH: Not sure what we should add here. We are pretty detailed regarding the context view already. 
- [x] Rename LG 3-7 to LG 04-06.
- [x] Replace LG 3-7 learning goal descriptions with LG 04-06 content.
- [x] Rename LG 3-6 to LG 04-07.
- [x] Replace LG 3-6 learning goal descriptions with LG 04-07 content.
- [x] For LG 04-07, process remarks by Wouter Oet: _“Renaming of the synonums: principles & aspects -> cross-cutting concepts & aspects”_
- [x] Rename LG 3-8 to LG 04-08.
- [x] Replace LG 3-8 learning goal descriptions with LG 04-08 content.
- [x] Rename LG 3-9 to LG 04-09.
- [x] Replace LG 3-9 learning goal descriptions with LG 04-09 content.
- [x] Create new LG 05-01 slides.
- [x] Add new topic placeholders to LG 05-01 slides.
- [x] Create new LG 05-01 content.
- [x] Copy LG 4-3 and LG 4-4 contents into LG 05-02.
- [x] Use copied LG 05-02 content as a basis to create new content.
- [x] For LG 05-02, process remarks by Wouter Oet: _“Although it is based on existing LG's, it would be beneficial to consider this as added entirely, also because the R level is increaded (R2->R1)”_
  - [ ] To the Reviewer from JH: We used to spend a lot of slides explaining ATAM here, but it is now an R3 topic. I removed the slides about ATAM and left it in as one of many possible methods to use in the listing.
  - [ ] To the Reviewer from JH: I think most of the slides we use here are still fine for the topic. I added two introductory slides to make sure that we actually mention all of the LG's R1 topics.
- [x] Create new LG 05-03 slides.
- [x] Add new topic placeholders to LG 05-03 slides.
- [x] Create new LG 05-03 content.
  - [ ] To the Reviewer from JH: In some ways this topic is already covered by quality assurance and the use of metrics. Added a couple of slides to introduce some modern tools a (Java) architect can use.
- [x] Rename LG 5-1 to LG 06-01.
- [x] Replace LG 5-1 learning goal descriptions with LG 06-01 content.
- [x] Rename LG 5-2 to LG 06-02.
- [x] Replace LG 5-2 learning goal descriptions with LG 06-02 content.
- [x] Check all LG-files for correct `_topicStart`-annotations
- [ ] Check the schedule in the OpenValue training wiki and make it fit the new content, ensure it is logical; could be shuffling the schedule, if necessary.
  - [ ] BJ will do this
- [ ] Check whether the quiz cards are still included in the right places (the QZ* slides / adocs).

