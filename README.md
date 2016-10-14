# goto
Linux Shell 'cd' replacement tool. Kindof like, cd on steroids, with fuzzy file finder and a directory bookmark saver.<br>
License: Standard MIT License.<br>
By: <a href="https://cs.uwaterloo.ca/~avadehra/">Ankit Vadehra</a>
<br>
<h2><b>Update:</h2> Due to the awesome people on GitHub and Hackernews, i have come to know of many changes that had to be done. I'm adding a method to Update the script and add "man" page for <b>people who have already installed "goto"</b>.<br><br>
<b>To Update goto:</b>
<pre><code>~$ wget -O goto "https://raw.githubusercontent.com/ankitvad/goto/master/goto"
~$ mv goto ~/.local/bin/
</code></pre>
<b>To Add the 'man' page:</b>
<pre><code>~$ wget -O goto.1 "https://raw.githubusercontent.com/ankitvad/goto/master/man_page/goto.1"
~$ sudo cp goto.1 /usr/local/share/man/man1/
~$ sudo mandb</code></pre>
That's about it. You can see the man page by: <code>man goto</code>
<br>
For New users, the normal installation will suffice. Look below for instructions.<br></b>
Detailed Description: <a href="http://ankitvad.github.io/blog/gotoacdreplacementtoolforlinux.html">goto | cd on steroids.</a>
===========
<h3>Installation:</h3>
To install:<br>
<b>If You have "git" installed</b>
<pre><code>~$ git clone "https://github.com/ankitvad/goto"
~$ cd goto
~$ make install</pre></code>
<b>If "git" is not present</b>
<pre><code>~$ wget -O goto.zip "https://github.com/ankitvad/goto/archive/master.zip"
~$ unzip goto.zip
~$ cd goto-master
~$ make install</pre></code>

