# Project Proposal Title

Iris Yang, Stephanie Wilson, and Tanay Nistala

## Introduction

[//]: # (The introduction should describe the problem in a non-technical manner, i.e., without math, equations, etc., as well as motivate the problem, i.e., why is it important?)

In the field of robotics, swarms pose an interesting challenge due to the high level of integration and orchestration required to achieve multi-agent collaboration on a task, and do so efficiently. Meanwhile, the medium of drones has received special focus due to the potential applications, which can range from their use in logistics, as popularized by high-profile public trials by companies like Amazon and Walmart, to light shows, surveillance, and more.

In bringing swarm robotics to drones, a core concern has been the problem of control. Highly coordinated actions like light shows require large amounts of preconfiguration, synchronization, and testing to get right, while achieving natural, teleoperated human control can pose a problem owing to the complexity of managing multiple drones at once. As a result, many applications drone swarm control use fixed formations of drones, with all drones translating or rotating together, and formation changes requiring new system parameters or setups, like targeting points.

We propose to develop a method of controlling a swarm drones while incorporating the ability to create and use a multitude of drone formations. This will require the ability to couple and decouple the drones from each other as the user creates new formations, and may open the doors to create more dynamic and open control systems for human controllers. This new method is more flexible and allows for more diverse movement, adding to the already fascinating drone localization problem. 

## Background Related Work

[//]: # (Following, you should provide the necessary background and discuss related work in the RL literature. This section should also be about a page. Citations should be in BibTeX format [2].)

Swarm robotics involves an integration of agent orchestration at both a low-level and a high-level, and both levels have been the subject of robotics research.

At a low level, Preiss et al. 2017 introduced the *Crazyswarm* as an architecture for reliably and precisely tracking miniature quadcopters indoors within the constraints of the sensors and networking infrastructure, and also coincidentally uses the same nano-quadcopter platform that we will employ. Meanwhile, Campion 2018 further describes various communication architectures for swarm networks.

At the high-level many researchers have explored schemes for coordinating drone swarms. Reynolds 1987 introduced a particle-based behavioral model of bird flocks, which was later expanded upon by Putra 2020. Bertizzolo 2020 and Asaamoning 2021 presented similar frameworks that optimize for fluctuating, dynamic system constraints and utilize concepts from distributed systems. 

## Technical Approach / Methodology / Theoretical Framework

[//]: # (Describe how you will approach the problem and its technical formulation.)

Our project will deal with drone localization, and how drones detect each other. We will use a controller to control 2 or more drones which also have the ability to decouple from each other and snap back together. Once they decouple from each other, the controller can move each drone independently. Each drone is capable of figuring out where they are in a certain space, and has a feature to detect where the other drone is. When the drones are coupled together again, a new distance is calculated between them, and they will move together via translation, always maintaining the same distance until decoupled again.



### Tasks

[//]: # (Subsections are useful for breaking down the problem into sub-parts. For example, you could break down the tasks for your project and list them one by one.)

Our tasks over the next 8 weeks are as follows: 
- Get acquainted with Crazyflie drones, sensors, and API. We will be going into 
the lab to look over the type of sensors that the drones have, how to access 
their API, and what commands we can use to move the drones around. 
- Implement basic synchronized movement/control. After getting acquainted with the 
drones' API and sensors, we will implement code to move the drones via 
translation. This will be a Kalman filter algorithm at first, accounting for the nonlinear 
environment of the drone. Later, if needed because of noise and inaccuracies, we 
may transition to a particle filter algorithm. 
- Implement coupling/decoupling algorithm/mechanism. After successfully translating 
the drones, we will think of a new algorithm to successfully couple and decouple the 
drones, allowing the user the ability to have the drones move independently, and 
then together again with the click of a button. 


## Evaluation

[//]: # (Describe how you will evaluate your approach/solution. What constitutes success? What metrics will you use? Do you have any preliminary hypothesis that you plan to test? Also, describe the RL domain or environment you plan to use.)

Evaluation of the drones' swarm behavior will be conducted in a two-fold manner: against the behavior of a solo, non-coupled drone, and amongst other drones in the swarm.

Swarm control inherently adds error by means of calibration against peer drones in the swarm, so comparing the behavior of drones in the swarm against one unhindered by the swarm algorithm will demonstrate the tradeoff of accuracy in implementing said swarm algorithm. This can be carried out on relatively basic tasks such as traveling a set distance or taking off and landing on a target, where the error can reasonably be assumed to propagate from the algorithm itself, rather than due to the accumulation of error over a longer trial run.

Comparison amongst the swarm's drones may be implemented in one of two ways. One method woould involve some sort of ranking system of drones closest to the target, and identifying the average deviation from that target. An alternative method would track the deviation of the individual drones from a set formation by assigning one drone to be the "leader" and measuring the error in the "follower" drones' positions in comparison.

Such methods would allow us to evaluate and compare multiple algorithms and filters to identify their effectiveness in navigating in a multi-agent environment, as well as possibly exploring the interaction of drones with different algorithms in the same swarm.

## Timeline and Individual Responsibilities

[//]: # (State the timeline in terms of weeks and milestones you want to achieve. If working on a team, state what the individual responsibilities are at this point i.e., who is going to do what, these may of course change over the course of the project. [1].)

Iris will be responsible for researching the sensor APIs, and helping to implement the logic of the follow drones. 

Tanay will be responsible for researching the algorithm for the project, as well as the math and the error of the main drone. 

Steph will be responsible for doing the logic of the follower drones, and researching different algorithms. 

The timeline of the project will be as follows: 

| Week | Date        | Task                                                   |
| ---- | ----------- | ------------------------------------------------------ |
| 1    | October 22  | Initial project proposal and research                  |
| 2    | October 29  | Get acquainted with Crazyflie drones, sensors, and API |
| 3    | November 5  | Implement basic synchronized movement/control          |
| 4    | November 12 | ...                                                    |
| 5    | November 19 | Implement coupling/decoupling algorithm/mechanism      |
| 6    | November 26 | ...                                                    |
| 7    | December 3  | Testing and debugging                                  |
| 8    | December 10 | Final project presentation                             |
| 9    | December 17 | Final project report                                   |


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

```BibTeX
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

```BibTeX
@inproceedings{putra2020research,
  title={Research on swarm drone using wireless navigation network in performing bird model swarm drone},
  author={Putra, YEFFRY HANDOKO},
  booktitle={Journal of Engineering Science and Technology 2nd International Conference on Informatics, Engineering, Science, and Technology 2019},
  pages={45--53},
  year={2020}
}
```

```BibTeX
@inproceedings{reynolds1987flocks,
  title={Flocks, herds and schools: A distributed behavioral model},
  author={Reynolds, Craig W},
  booktitle={Proceedings of the 14th annual conference on Computer graphics and interactive techniques},
  pages={25--34},
  year={1987}
}
```

```BibTeX
@inproceedings{preiss2017crazyswarm,
  title={Crazyswarm: A large nano-quadcopter swarm},
  author={Preiss, James A and Honig, Wolfgang and Sukhatme, Gaurav S and Ayanian, Nora},
  booktitle={2017 IEEE International Conference on Robotics and Automation (ICRA)},
  pages={3299--3304},
  year={2017},
  organization={IEEE}
}
```