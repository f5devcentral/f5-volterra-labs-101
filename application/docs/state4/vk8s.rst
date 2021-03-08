Virtual Kubernetes
==================

In this section we will create an additional Virtual K8s workload.

First start by going to the Virtual K8s that you previously created

Exercise 1: Create Virtual K8s Workload for the Inventory
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#. Click the Workloads tab

    |k8s_workloads_menu|

#. Click the *Add vK8s workload* button 

#. Enter the following variables:

    ======================= =====
    Variable                Value
    ======================= =====
    Name                    brews-inv
    Select Type of Workload Service
    ======================= =====

#. Under the *Service* section, click the *Configure* link

#. Enter the following variables in the *Containers* section 

    =============================== =====
    Variable                        Value
    =============================== =====
    Name                            brews-inv
    Image Name                      registry.f5demos.com/inv
    Select Container Registry       Private Registry
    Private Registry                Select the private registry you created previously
    =============================== =====

#. Enter the following variables in the *Deploy Options* section 

    =============================== =====
    Variable                        Value
    =============================== =====
    Where to Deploy the workload    Customer Virtual Sites 
    =============================== =====

#. Under *Customer Virtual Sites*, click the *Configure* link

#. Select the Virtual Site you created in the previous section

#. Click the *Apply* button

#. Under *Advertise Option*, choose *Advertise In Cluster*

    |vk8s_workloads_advertise|

#. Enter the following variables:

    ==========  =====
    Variable    Value
    ==========  =====
    Port        8002
    ==========  =====

#. Click the *Apply* button

#. Click the *Apply* button

#. Click the *Save and Exit* button

.. |k8s_workloads_menu| image:: ../_static/k8s_workloads_menu.png
.. |vk8s_workloads_advertise| image:: ../_static/vk8s_workloads_advertise.png