# Project Proposal Title

Iris Yang, Stephanie Wilson, and Tanay Nistala

## Introduction

The introduction should describe the problem (in a non-technical manner, i.e., without math, equations, etc.), as well as motivate the problem, i.e., why is it important?

## Background Related Work

Following, you should provide the necessary background and discuss related work in the RL literature. This section should also be about a page. Citations should be in BibTeX format [2].

## Technical Approach / Methodology / Theoretical Framework

Describe how you will approach the problem and its technical formulation. Feel free to re-state the basic RL formulas (e.g., if using Q-learning, state the update rule or the formula for what the Q function approximates).

### Tasks

Subsections are useful for breaking down the problem into sub-parts. For example, you could break down the tasks for your project and list them one by one.

## Evaluation

*Describe how you will evaluate your approach/solution. What constitutes success? What metrics will you use? Do you have any preliminary hypothesis that you plan to test? Also, describe the RL domain or environment you plan to use.*

Evaluation of the drones' swarm behavior will be conducted in a two-fold manner: against the behavior of a solo, non-coupled drone, and amongst other drones in the swarm.

Swarm control inherently adds error by means of calibration against peer drones in the swarm, so comparing the behavior of drones in the swarm against one unhindered by the swarm algorithm will demonstrate the tradeoff of accuracy in implementing said swarm algorithm. This can be carried out on relatively basic tasks such as traveling a set distance or taking off and landing on a target, where the error can reasonably be assumed to propagate from the algorithm itself, rather than due to the accumulation of error over a longer trial run.

Comparison amongst the swarm's drones may be implemented in one of two ways. One method woould involve some sort of ranking system of drones closest to the target, and identifying the average deviation from that target. An alternative method would track the deviation of the individual drones from a set formation by assigning one drone to be the "leader" and measuring the error in the "follower" drones' positions in comparison.

Such methods would allow us to evaluate and compare multiple algorithms and filters to identify their effectiveness in navigating in a multi-agent environment, as well as possibly exploring the interaction of drones with different algorithms in the same swarm.

## Timeline and Individual Responsibilities

State the timeline in terms of weeks and milestones you want to achieve. If working on a team, state what the individual responsibilities are at this point (i.e., who is going to do what, these may of course change over the course of the project). [1].

## References

```BibTeX
@INPROCEEDINGS{9155231,
  author={Bertizzolo, Lorenzo and D’Oro, Salvatore and Ferranti, Ludovico and Bonati, Leonardo and Demirors, Emrecan and Guan, Zhangyu and Melodia, Tommaso and Pudlewski, Scott},
  booktitle={IEEE INFOCOM 2020 - IEEE Conference on Computer Communications}, 
  title={SwarmControl: An Automated Distributed Control Framework for Self-Optimizing Drone Networks}, 
  year={2020},
  volume={},
  number={},
  pages={1768-1777},
  keywords={Protocols;Drones;Optimization;Couplings;Decentralized control;Wireless communication;Drone Networks;Software-Defined Networking;Distributed Network Control},
  doi={10.1109/INFOCOM41043.2020.9155231}}
```

```BibTeX
@ARTICLE{9048609,
  author={Chen, Wu and Liu, Jiajia and Guo, Hongzhi and Kato, Nei},
  journal={IEEE Network}, 
  title={Toward Robust and Intelligent Drone Swarm: Challenges and Future Directions}, 
  year={2020},
  volume={34},
  number={4},
  pages={278-283},
  keywords={Drones;Task analysis;Wireless communication;Network topology;Robot kinematics;Robustness;Ad hoc networks;Information management;Communications technology},
  doi={10.1109/MNET.001.1900521}}
```

```BibTeX
@INPROCEEDINGS{8001645,
  author={Shrit, Omar and Martin, Steven and Alagha, Khaldoun and Pujolle, Guy},
  booktitle={2017 16th Annual Mediterranean Ad Hoc Networking Workshop (Med-Hoc-Net)}, 
  title={A new approach to realize drone swarm using ad-hoc network}, 
  year={2017},
  volume={},
  number={},
  pages={1-5},
  keywords={Drones;Ad hoc networks;Software;Sensors;Real-time systems;Streaming media;Cameras;drone swarm;ad hoc network;leader-follower formation},
  doi={10.1109/MedHocNet.2017.8001645}}
```

```BibTeX
@ARTICLE{doi:10.1139/juvs-2018-0009,
  author = {Campion, Mitch and Ranganathan, Prakash and Faruque, Saleh},
  title = {UAV swarm communication and control architectures: a review},
  journal = {Journal of Unmanned Vehicle Systems},
  volume = {7},
  number = {2},
  pages = {93-106},
  year = {2019},
  doi = {10.1139/juvs-2018-0009}}
```

```BibTex
@ARTICLE{s21082642,
  author = {Asaamoning, Godwin and Mendes, Paulo and Rosário, Denis and Cerqueira, Eduardo},
  title = {Drone Swarms as Networked Control Systems by Integration of Networking and Computing},
  journal = {Sensors},
  volume = {21},
  year = {2021},
  number = {8},
  article-number = {2642},
  url = {https://www.mdpi.com/1424-8220/21/8/2642},
  pubmedid = {33918696},
  issn = {1424-8220},
  doi = {10.3390/s21082642}
}
```