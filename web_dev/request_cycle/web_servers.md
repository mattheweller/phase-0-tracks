Web Servers
-
1. What are some of the key design philosophies of the Linux operating system?
	- Small is Beautiful
	- Each Program Does One Thing Well
	- Prototype as Soon as Possible
	- Choose Portability Over Efficiency
	- Store Data in Flat Text Files
	- Use Software Leverage
	- Use Shell Scripts to Increase Leverage and Portability
	- Avoid Captive User Interfaces
	- Make Every Program a Filter
2. In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?
	- A VPS is a virtual machine sold as a service by an Internet hosting service. A VPS runs an operating system, and customers may have superuser-level access to that operating system instance, so they can install almost any software that runs on that OS.
3. Optional bonus question: Why is it considered a bad idea to run programs as the root user on a Linux system?
	1. You are much more prone to mistakes or software bugs. That program which deleted files as a bug? If it ran as a limited user, at most it can damage stuff in your home directory and on a few other devices (e.g. USB disks).
	2. If ran as root, it might have freedom to delete everything in the system. Besides, you might be the victim of a buggy script which accidentally deletes critical files.
	3. Similarly, a vulnerability or malicious software can cause much more harm, because you gave it full permissions. It can change programs in /bin and add backdoors, mess with files in /etc and make the system unbootable etc...
	4. You can be victim of your own stupidity. That `rm -rf *` you ran by mistake, or if you swapped input/output device in dd, would be stopped by your lack of permissions, but if you run as root, you are all powerful.
	5. **You don't need it** for most uses, except for administrative work.
	6. `sudo` has similar dangers, but at least they will not (at least they should not) happen by accident - if you typed `sudo destroy_my_machine` you presumably knew well what would happen, it's very hard to believe one could do it by accident.