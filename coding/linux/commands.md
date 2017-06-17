## Commands

### Keyboard commands

Removing a typed word:

ctrl w

Removing all characters:

ctrl u

### Shell commands

Continuing a paused program:

```shell
fg
```

Killing a job:

```shell
kill -TERM %1
```

Using the manual:

```bash
man cat # Shows the manual of the cat command
```

Searching for a command:

```bash
apropos some_keyword
```

Su:

```bash
su -c 'ls -l /some_directory'
```

Sudo:

```bash
sudo ls -l /some_directory
sudo -i # Opens new shell with root privileges
```
