# Ansible POC Code and Documentation

Starter assets for Ansible POC for ISVA Appliance Build

This POC is built for Windows 11, VMware Workstation Pro 17, and WSL.

## Preparation

### Download and Install VMware Workstation Pro

[Download and License VMware Desktop Hypervisor](https://knowledge.broadcom.com/external/article/368667/download-and-license-vmware-desktop-hype.html)

Select the Operating System and Version, agree to the Term and Conditions.

Fill out the Trade Verification Form if applicable.

Run the installer for your platform. Note that this may require additional software installation or configuration.

### Install and Configure WSL

Refer to the [WSL Cheatsheet](../docs/WSL_Cheatsheet.pdf ) to create the Ubuntu Ansible Management VM.

### ISVA 10.0.8 Appliance ISO, Activations, and Fixpack(s)

Download [IBM Security Verify Access v10.0.8](https://www.ibm.com/support/pages/download-ibm-security-verify-access-v1008) from [Passport Advantage](http://www.ibm.com/software/howtobuy/passportadvantage/pao_customers.htm)

For this POC the required part numbers are M0JF0ML, M0JF5ML, M0JF8ML, M0JF9ML and M0JFBML from eAssembly G0BTTML

Download the IF0002 (or latest) fixpack from [Fix Central](https://www.ibm.com/support/fixcentral/swg/selectFixes?parent=IBM%20Security&product=ibm/Tivoli/IBM+Security+Verify+Access&release=10.0.8.0&platform=Linux&function=all)

| Part Number | Description | File Name |
| --- | --- | --- |
| M0JF0ML | IBM Security Verify Access v10.0.8 Quick Start Guide | Security_Verify_Access10.0.8_QSG.pdf |
| M0JF5ML | IBM Security Verify Access v10.0.8 Base Virtual Appliance .ISO file | Sec_Ver_Acc10.0.8_BVAISOFi_ML.iso |
| M0JF8ML | IBM Security Verify Access v10.0.8 Activation Code | Sec_Ver_Acc10.0.8_AccCode_ML.txt |
| M0JF9ML | IBM Security Verify Access v10.0.8 Federation Activation Code | Sec_Ver_Acc10.0.8FedActCode_ML.txt |
| M0JFBML | IBM Security Verify Access v10.0.8 Advanced Access Control Module | Sec_Ver_Acc10.0.8_AdAcCo_Mod_ML.txt |
|         | Fix pack: 10.0.8.0-ISS-ISVA-IF0002 | 10.0.8.0_IF2.fixpack |

## Building the POC

### Install Ansible and Dependencies on WSL

Start up Ubuntu with the ansible user or create a new ansible user.
