#import "template.typ": template, hrule, bib
#show: template

= Terminal Lives Matter!
#hrule

In the era of modern technology, we have become accustomed to the GUI
(Graphical User Interface). It keeps us safe and secure with its easy-to-grasp,
point-and-click based interaction. The GUI is a great achievement. However,
it's not the only option. To explain, let's have a bit of background.

=== Enter 1981
#hrule

In the early days of computing, we had no graphical interfaces at all. We had
something called MDA: the Monochrome Display Adapter. This was completely
incapable of displaying images: all it was capable of showing was fixed-size,
black-and-white text. No large headings, no fonts, not even italics - as plain
as text can be.

Naturally, people wanted more. In the same year, IBM also released CGA: the
Color Graphics Adapter. This was the first IBM graphics card capable of
displaying images, and in glorious 640 x 200 resolution, with a stunning
16-color palette. A meager start, but a start.

Before long, people were using the power of pixels to display more than just
text. The mouse was invented, allowing you to more visually interact with your
computer. Undoubtedly, these were some of the finest innovations.

=== Back to 2024
#hrule

Now, in 2024, the GUI is inescapable. We look back with disdain on the ancients
whose computing was limited to a keyboard. Except - why?

Accessibility is a huge issue in the modern world. You have a responsibility to
make your tech available to the greatest number of users, regardless of
handicaps. This is a good thing! We want computers to be as widely usable as
possible, especially as they become more and more ubiquitous. _We must
accomodate them._

And yet, the terminal - the sole survivor of those golden days - lingers on.
More than lingers, it thrives. Many are under the impression that this is a
temporary blight on humanity, that we must modernize it or else discard it
entirely. This would be a travesty. We must not let that happen.

=== Witch-hunting
#hrule

The first reason people want to eliminate the terminal is age. They think that
there's no way something that old could possibly be relevant it todays era of
enlightenment and progress; they take it as an insult that we would keep using
it. I'll simply say this is a genetic fallacy.

Others don't enjoy using the terminal. This is entirely fair; different people
work in different ways, and we should preserve that. Nobody should be forced to
use a terminal. But it works both ways: by removing it, they would force people
like me to migrate to GUI applications, thereby forcing us to use _their_ tool.
Not exactly fair.

=== Her wrinkles are showing...
#hrule

Those two arguments aren't logical in the slightest, but the next are made by
very intelligent people, and I would like to give them due credit and respect.

The terminal, being a product of bygone days and years of evolution, has
accumulated a lot of cruft. Its only method of displaying colored text (ANSI
escape sequences) is a crude hack: I can admit that. I've worked intimately
with this technology, and I know its faults.

However, this on its own is not enough to warrant deleting the system entirely.
For one, it works. Despite all the hate, all the well-deserved criticism, it
has managed to give us a usable interface that's easy to design for. It has
stood the test of time, duct-tape and all.

That's not to say I want to keep it this way. On the contrary, if the whole
world changed to use a more sensible system, I'd be overjoyed! However, that's
not practically going to happen, given the decades worth of code relying on it.

=== ...and her limbs are weak
#hrule

Another piece of technology that's become burdensome is how data flows between
programs. In most programming languages today, data has a type: you can tell
just by looking at it what it is. However, terminals are built around text,
which has no type.

Except... is this true? Not entirely. It's entirely true that the main
interface of a terminal is monospaced, often monochromatic text. But in the
background there are other options: you can open a Unix socket and send binary
data through that. You can even pipe binary data through stdout, as long as
you're certain the reciever is expecting it.

So why do most programs still use "stringly typing", as it's
not-so-affectionately called? Because it's easy. You could spend hours
supporting various protocols, performing complex dances with discovery
mechanisms and intermediate formats: or you could spew out text with the
expectation that the user will glue it together themselves.

This works... well? Certainly it puts more weight on the user, but in my
experience gluing the two ends together is not all that difficult, especially
when others have made tools to make it easier. Moreover, there are many
text-based data interchange formats available: JSON, while not perfect, has
become standard for such things.

If you're interested, look at DBus, a facility for connecting processes that
wish to communicate together, for an example of how messy and painful this
could become. If it ain't broke, don't fix it.

=== ...and her vision dims
#hrule

Now, back to accessibility. Again, this is a serious issue. But that's not the
terminal's job.

The GUI is a marvelous invention, capable of accomodating hundreds of sundry
incapacities. This is good. We want this. But the terminal is not made for
accessibility, nor does it need to be. Its job is to help those capable get
things done, as quickly and efficiently as possible.

While we must do everything possible for those impaired, we need not sacrifice
our own abilities to do so. The solution to inaccessible terminal utilities is
not to remove the terminal, but to provide a GUI alternative for those who need
it. I've always dreamt of a tool capable of creating both CLI and GUI
interfaces at once, though regrettably I am unqualified to provide such a tool.

=== ...and her speech is slurred
#hrule

The language of the terminal is the shell, almost as old as Latin. The first
POSIX shell was the Korn shell, released in 1983. Then came Bash (Bourne
Again Shell) in 1989, improving upon the Korn shell and their shared ancestor,
the Bourne shell. Since then, many more POSIX shells have arisen, each
attempting to be better than the last. The standard for compatibility is Bash.

Bash is a flawed language. It has inscrutible sigils, poor flow control, and
esoteric language to accomplish all that it does. Nonetheless, it's a very
powerful language for rapidly controlling a computer. Its flaws come from doing
too much, not too little.

Many look at full programming languages, such as Python or Ruby, and expect the
humble shell to compete. It should not do so. If you want the power of Python
in the shell... type `python` and hit enter. No need to bloat the shell itself
with functionality that others can do better, and no need to make shell slower
and harder to work with.

The fundamental misunderstanding is expecting a shell to be a programming
language. Some shells, such as nushell, take this route: in my opinion, they're
harder to use for it. The shell is a command center, for dispatching more
powerful forces with ease, not for providing the raw firepower.

=== ...but she's still going.
#hrule

Before we go, I must dispell certain illusions. Certain improvements to the
terminal would be welcome. A more strict typesystem would be useful; a
replacement for ANSI would be miraculous; and alternatives to the terminal are
essential.

Overall, the terminal is a wonderful piece of technology. Its ability to
display data compactly and uniformly, the ease of development, and the
intuitive (to some) text-based interface are lovely to work with, for some.

For others, that's not necessary. They need the comfort of a GUI, and we should
give it to them. Not everyone should use a terminal. But not everyone should
use a GUI either. You wouldn't ban bikes for the sake of cars, nor cars for the
sake of bikes: you provide ways to work together. Shall we?

=== Links
#hrule
