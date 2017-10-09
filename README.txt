SWEN424 - Power Grid Simulator
==============================

Team members
------------
Khushboo Chauhan	300437942 
Kirita Escott		300302857 
Lachlan Lee			300281826 
Florian Treier		300414773 

Description
-----------
Power grid simulator is a is a language that lets you model a power grid and
simulate whether there is enough production, transformation and transport
capacity to meet the electricity demand of the consumers. The user can build
his network consisting of consumers, producers, transformers and grids. At the
push of a button the current network will simulated and the user gets a
graphical representation of his network and sees whether the network is in a
stable situation or if there is a problem.

Contents
--------
The Root directory is the MPS main directory.
In "Library" directory is where the eclipse project for our external library

Running Power Grid Simulator
----------------------------
To run the Power Grid Simulator the MPS 2017.2 (Build 172.1127) or compatible
version has to be installed.
 1. Open the Project in MPS
 2. in the Settings dialogue (File/Settings or ctrl + alt + S) under 
    "Appearance & Behaviour"/"Path Variables" create a new variable named 
	"project_home" pointing to the root directory (directory where this
	file lies)
 3. Build the language by right clicking on "PowerGrid" in the "Logical View"
    and choose "Make language PowerGrid"
 4. Repeat the above step for the PowerGrid.sandbox solution.
 5. Run any of the sample simulations in the PowerGrid.sandbox solution by 
    right clicking on them and choose Run 'Node [Name]' or with the shortcut
	ctrl + shift + F10
