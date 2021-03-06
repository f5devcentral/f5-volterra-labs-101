Use REs to Host a Service
==========================
The DemoBrews executive team has determined the company can increase 
revenue per transaction by adding a "recommendations" service to the app. 
Being in a rush to launch the service, the dev team skipped the required regression 
and load testing procedures for adding functionality to the API service.
For speed, the service will need to be deployed to two geographically diverse Volterra Regional Edges (REs).

Section Goals
-------------
We will deploy the "recommendations" service to Seattle and New York based Regional Edges.
We will then expose the service to the internet using an HTTP load balancer.

In this section we will configure the following VoltConsole components:

- Virtual Site as a deployment target for our vK8s workload
- vk8s workload containing the "recommendations" service
- HTTP load balancer

Terminology
-----------

Region Edge
   Regional Edge sites provide Volterra functionality for customer sites and applications from several POPs distributed throughout the world.
   These services include global load balancing, application security, volumetric DDoS, and points of ingress into the Volterra Global Network.
   Additionally, limited compute resources are available to customers to run their own edge services. 
 

Data Flow and Architecture
--------------------------
The logical application data flow will now include the "Recommendations" service.

|state4|

The architecture is now spread across Customer Edges (CEs) and multiple Volterra Regional Edges (REs).

|arch4|

.. toctree::
   :maxdepth: 1
   :caption: Contents:

   createREsite


.. |state4| image:: ../_static/LabAppFlow4.png
.. |arch4| image:: ../_static/LabArch4.png
