#import "template.typ": template, hrule, bib
#show: template

= Why Open Source Matters
#hrule

If you go to your local café and ask for free food, all you'll get is a funny
look. Just as true in the digital realm is that any really good app requires
selling your right arm. But in the world of free,
#link("https://wikipedia.org/wiki/Open_source")[open-source] software (commonly
abbreviated as FOSS), people are breaking the rules and giving away digital
feasts.

The meaning of open-source is slightly technical, but the implications are not.
Essentially, it means that anyone can view the source code of your software,
suggest changes, or even copy it and make their own version. In most walks of
life, such actions are punishable by law. But in software development, it's a
way of life. Every piece of software you've ever used has some open-source
project embedded in it.

=== It's all open-source? Always has been
#hrule

I don't say that lightly. Were it not for piles of open-source projects, the
technology we know and love would not be possible. Take your phone for example.
Unless you're an Apple user, your phone runs the
#link("https://android.com")[Android operating system.] This is a huge piece of
open-source software! In fact, it's built on top of yet another huge
open-source project, the #link("https://wikipedia.org/wiki/Linux_kernel")[Linux
kernel,] which provides the basis for the open-source operating system of the
same name and many others.

This next applies to everyone, whether on Apple, Android, Windows, or even a
restraunt kiosk. #link("https://curl.se")[`curl`,] as they state on their
website, is used daily by almost everybody who uses the internet. It's found on
billions of devices from cars to coffeemakers, desktops to dishwashers. It
provides access to the internet, supports dozens of 
#link("https://wikipedia.org/Communication_protocol")[protocols,] runs on
anything you can imagine, and does it all for free.

Usually, though, people access the web through their browser of choice. Popular
choices are Chrome, Firefox, and DuckDuckGo (both the browser and search
engine). All three of these are free, open-source projects. Technically, Chrome
is the outlier; it's built on top of the FOSS project
#link("https://chromium.org")[Chromium,] which has all of the features of
Chrome, except for Google-specific integrations. Millions still use it, and
it's a great example of a major company benefitting directly from open-sourcing
their software.

#link("https://wikipedia.org")[Wikipedia,] and all her neighbor projects, are
open-source in just about every way. For one, the actual platform they run on,
#link("MediaWiki") (which powers most of the wikis of the wild web), is FOSS.
Moreover, all of the the contents of Wikipedia, from the images to the text,
are available for anyone to modify or copy. There are
#link("https://kiwix.org/en/")[ways to download everything] off of Wikipedia,
and you can republish anything you read on it (though you may not always want
to).

=== Why you should care
#hrule

Now it's all well and good that a bunch of software is FOSS. But, lest you
accuse me of
#link("https://wikipedia.org/wiki/Argumentum_ad_populum")[argumentum ad
populum,] let me explain why this is so.

Open-source software, as I've described, allows anyone and everyone to view,
suggest changes to, and copy your software or parts of it. Were we talking
about a college dissertation or trade secret, perhaps this would be a bad
thing. However, in the programming world, it's essential to producing correct,
featureful, and secure software.

Those are some broad claims, so let's take them one by one. First, it promotes
correctness in software. Why? Well, when you make your code open-source, it
actively invites people to review your code. After all, they want to make sure
that the project they're relying on is sound.

This is especially true of corporations, the larger the better; in other words,
it gives the little guys thousands of eyes for free. Naturally, that leads to
many more bugs being found and fixed than if one or two people were in charge
of maintaining it.

It also leads to more features. Because anyone can copy your project, there is
often competition, where the other side starts with everything you had to work
for. This leads to features getting added, people moving, and each side rushing
to draw people towards them. Think of the Apple vs. Microsoft war; if one
or the other didn't exist, people would never know what features they were
missing, and would probably never get them.

In addition, if a popular project ever dies, anyone who wants to can revive it,
making software much more long-lived; almost all the old software still in
extensive use today is open-source. The Linux kernel I mentioned earlier is
decades old and started by one man. If not for open-source, it would have died
long ago, and Android would be very different today.

Finally, FOSS heightens security standards for code. If a company writes a
proprietary file sharing service, you have to take their word for it that they:
 - Implemented the encryption protocols correctly and fully
 - Secured all potential attack vectors, such as #link("https://wikipedia.org/wiki/Timing_attack")[timing attacks]
 - Didn't nest spyware into the service to log personal information

That is frankly terrifying. But when you use FOSS software, those worries
(mostly) melt away. Hundreds to thousands of people have reviewed the software
before you ever heard of it, verified that it is properly secured, and checked
for any suspicious code that may be leaking information to a third (or first)
party. On the #link("https://gnu.org")[GNU] homepage, the
#link("https://fsf.org")[Free Software Foundation] explains this
succinctly:

#quote(block: true)[The free software movement campaigns to win for the users
of computing the freedom that comes from free software. Free software puts its
users in control of their own computing. Nonfree software puts its users under
the power of the software's developer.]

To be clear, they mean free as in freedom; no-cost software helps that goal,
but isn't essential. However, most open-source software is both kinds of free.

I must address an unfortunate argument people have used against FOSS goes
something like this:

#quote(block: true)[Since anyone can read the source code of open-source software, that gives hackers more information about vulnerabilities in the code, and can more easily exploit them.]

This is simply not true. They are proposing
#link("https://wikipedia.org/wiki/Security_through_obscurity"). While it does
increase the time and effort it takes hackers to learn the inner workings of
your secure system, it does so at the cost of making it harder for security
researchers to do the same and report them. In addition, improved tooling such
as decompilers and debuggers are making it easier than ever to look inside a
system, reducing the efficacy of hiding the source code.

=== The community of FOSS
#hrule

You may think that open-source is an implementation detail. Why care how your
web browser gets made, so long as it works? But it's about more than just
software: it's about community.

Imagine you have an issue with your email client. With a proprietary client,
your only hope is to message customer support, hope they reply, and pray that
they put you in touch with a qualified member of staff who can solve your
problem, or else fix it.

Unfortunately, tech support is often busy, unfriendly, or unable to help.
However, when you talk to an open-source developer, you're talking to someone
who does what they do for the joy of it. They aren't an underpaid intern in a
shady closet; they (hopefully) aren't an impatient, overworked employee trying
to make it through to lunchtime. They are there to help and to make their
software better. They also have intimate knowledge of the project itself, since
they helped make it. Your very first contact is someone who can tell you how to
solve your problem, or patch any bugs you may have found.

To FOSS, _you_ are the point. Many projects are started by one person who wants
a better way to do something, but they ultimately end up impacting thousands of
people. They aren't making money off of the software itself; at best, they have
sponsors who pay them a tithe to continue giving them otherwise free labor. But
these are not the reason for development, they are the means.

FOSS developers want to see people use and love their software. They want to
see people smile when they open their app, not because they make money off of
it, but because they are a human being instead of a cold-blooded corporation.
They may be rude, snobbish, or tired; they're human. And that's a good thing.

#pagebreak(weak: true)
=== Before you go

I hope that, through this essay, I've introduced you to the marvelous world of
free, open-source software. It's not only essential to the creation of the apps
you already know and love, but it's also a wellspring of fresh, new, exciting
apps you can use, today, for free. Here's a few of my favorites; you can find
more on sites like #link("https://github.com")[Github,] which host open-source
applications for free.

#link("https://libreoffice.org")[LibreOffice] is a free suite of office tools
that strives to replace Microsoft 365 while being easy to transition to. Here
are some of their products, as well as the Microsoft tools they replace:
 - Word: Writer, a document composition tool
 - Excel: Calc, a spreadsheet application
 - Powerpoint: Impress, a slideshow presentation tool
 - Publisher: Draw, a diagramming tool, and Charts, a data visualization tool
 - Access: Base, a database creation and management application

#link("https://syncthing.org")[Syncthing] is a free device-to-device file
sharing / syncing app that never sends your files to any devices other than
your own. It's a refreshing alternative to services like Google Drive and
OneDrive, and has no storage limit since it's all hosted locally on your own
devices.

#link("https://typst.app")[Typst] is a multifaceted tool for writing documents
(including this essay!), seeking to replace the LaTeX family tree. It's free,
fast, and small, has a
#link("https://wikipedia.org/Command-line_interface")[Command-line tool] for
offline use, and a web editor for a polished, on-the-go writing experience.

Most of all, I hope that I have inspired you with newfound respect for the
people who make the apps that you know and love. They work hard for you, and
most of it is unpaid labor. The least you can do is learn more about how they
do it.

=== Links
#hrule

#bib([
- #link("https://wikipedia.org/wiki/Open_source")[Open source on Wikipedia]
- #link("https://github.com")[Github, an open-source hosting platform]
- #link("https://fsf.org")[The Free Software Foundation]
- #link("https://creativecommons.org")[Creative Commons, a nonprofit for freedom]
- #link("https://libreoffice.org")[LibreOffice, a free Word alternative]
- #link("https://syncthing.net")[Syncthing, a file syncing service]
- #link("https://typst.app")[Typst, a powerful document typesetter]
])

