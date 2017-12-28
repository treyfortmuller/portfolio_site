---
layout: post
title:  "Waterproof Quadcopter Build"
date:   2017-12-15
excerpt: "A waterproof quadcopter built around the crazyflie flight controller for a professor researching aquatic drone launches."
image: "/images/pic02.jpg"
---

## Inspiration

After taking "Intro to Control for UAVs" (ME136) in the Fall of 2017, the professor Mark Mueller recruited my lab team to design and build a quadcopter to be used in his lab for research purposes. One of his graduate students is working on launching a drone from the ocean. This platform will be a test rig to be used within the lab as the grad student works on modeling the dynamics of an aquatic launch and developing control systems to achieve this reliably.

The build had to employ the same flight controller that the lab already used for their various other drone related projects, the <a href="https://www.bitcraze.io/crazyflie-2/">Crazyflie</a> from Bitcraze, a PCB designed to drive brushed motors.

## Requirements
<div class="row">
	<ul>
		<li>Run the Crazyflie flight control board (an STM F4 microcontroller)</li>
		<li>Have enough room for a radio based <a href="https://www.bitcraze.io/loco-pos-system/">localization unit</a> to use for state estimation</li>
		<li>Not too high of a voltage (limit to a 2S LiPo's 8.4V)</li>
		<li>Compact, less than 200mm motor shaft to motor shaft</li>
		<li>Agile, at least a 2:1 thust to weight ratio</li>
		<li>Operate down to 3m of depth</li>
	</ul>
</div>

## Component Specification

Systems engineering for a multirotor is a large optimization problem including factors such as motor stator size, motor KV, prop diameter and airfoil, battery voltage and capacity, and aircraft size, weight, and configuration. Thankfully the requirements for the platform narrowed down our choices.

We estimated we could meet all the requirements with a craft weighing around 100g. Based on existing motor thrust testing, we found that an 1104 7500KV motor could achieve 100g thrust on 2S running a 2inch prop, so we'd get a power to weight ratio of roughly 4:1.

With this, we decided on a 2S LiPo at 400mAh. Knowing that all our components would have to be submersible, we decided to look around 10A rated 4-in-1 ESCs (4 ESCs for brushless motors on one PCB for easy mounting inside a waterproof enclosure).

With our powertrain specified, we found the proper components on Amazon and began recreating them in CAD so I could design our frame and waterproof enclosure around them. The Bill of Materials for off the shelf components we included in the build is as follows:

<h3>Bill of Materials</h3>
<div class="table-wrapper">
	<table>
		<thead>
			<tr>
				<th>Item</th>
				<th>Description</th>
				<th>Total Weight Contribution (grams)</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td><a href="https://store.bitcraze.io/collections/kits/products/crazyflie-2-0">Crazyflie Flight Controller</a></td>
				<td>STM F4 based microcontroller with an IMU and several UARTs</td>
				<td>7</td>
			</tr>
			<tr>
				<td><a href="https://store.bitcraze.io/collections/positioning/products/loco-positioning-deck">Bitcraze Loco Positioning Deck</a></td>
				<td>RF based locolization module</td>
				<td>3.3</td>
			</tr>
			<tr>
				<td><a href="https://www.amazon.com/iPower-Motor-Brushless-Quadcopter-Torrent/dp/B01N7QDZY6/ref=sr_1_3?ie=UTF8&qid=1510622724&sr=8-3&keywords=1104+7500kv">iPower iX1104 7500KV Brushless Motor</a></td>
				<td>Brushless motors</td>
				<td>22</td>
			</tr>
			<tr>
				<td><a href="https://www.amazon.com/BLHeli_S-Electronic-Controller-Multirotor-Crazepony/dp/B076BDHCHX/ref=sr_1_4?rps=1&ie=UTF8&qid=1510621639&sr=8-4&keywords=20x20+10A+ESC&refinements=p_85%3A2470955011">Wave 4-in-1 10A ESC</a></td>
				<td>Single PCB with 4 ESCs for brushless motors rated for 10A continuous</td>
				<td>6</td>
			</tr>
			<tr>
				<td><a href="https://www.amazon.com/Crazepony-400mAh-Battery-Racing-Quadcopter/dp/B072BH1XP6/ref=sr_1_1?ie=UTF8&qid=1510622347&sr=8-1&keywords=2S+400+mah&dpID=410fHvjWLiL&preST=_SY300_QL70_&dpSrc=srch">Crazepony 400mAh 2S 7.4V 30C LiPo</a></td>
				<td>A small 2-cell LiPo</td>
				<td>22</td>
			</tr>
			<tr>
				<td><a href="https://www.amazon.com/Propellers-Compatible-6200-10000KV-Brushless-Transparent/dp/B074NP3LFF/ref=sr_1_1?s=toys-and-games&rps=1&ie=UTF8&qid=1510622468&sr=1-1&keywords=2inch+props&refinements=p_85%3A2470955011">Gemfan 2040 Triblade Props</a></td>
				<td>Some 2 inch diameter triblade propellors</td>
				<td>3.6</td>
			</tr>
			<tr>
				<td><a href="https://www.amazon.com/Matek-Systems-Adjustable-Switchboard-Continuous/dp/B01EACBW6E/ref=sr_1_fkmr1_4?ie=UTF8&qid=1511574313&sr=8-4-fkmr1&keywords=matek+5V+regulator">Matek Systems Micro BEC 5V/12V Adjustable Buck Module</a></td>
				<td>Battery eliminator, a 5V bucking regulator</td>
				<td>1</td>
			</tr>
		</tbody>
	</table>
</div>

## Design








