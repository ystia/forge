.. _ntp_section:

***
NTP
***

.. contents::
    :local:
    :depth: 3

NTP stands for Network Time Protocol. It allows to synchronize clocks between computer systems over networks.

NtpServer Component
-------------------

The NtpServer component is responsible of maintaining a clock and responding to synchronization requests from clients.

Properties
^^^^^^^^^^

Requirements
^^^^^^^^^^^^

- **host**: NtpServer should be hosted on a Compute component.

Capabilities
^^^^^^^^^^^^

- **ntp_endpoint**: Expose an endpoint for NTP

NtpClient Component
-------------------

The NtpClient component is responsible of maintaining a clock and responding to synchronization requests from clients.

Properties
^^^^^^^^^^

Requirements
^^^^^^^^^^^^

- **host**: NtpClient should be hosted on a Compute component.

- **ntp_server**: NtpClient should be connected to a NtpServer component.

Capabilities
^^^^^^^^^^^^
