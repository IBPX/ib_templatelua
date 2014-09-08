# ib_templatelua
Lua Template system.

## Using
To use `ib_templatelua` is pretty simple.

    myTemplate = "Hey, {{name}}! How's the weather in {{place}}?"
    newText = ib_templatelua.FillTemplate(
    	myTemplate,
    	{name = "Johnny", place = "the backyard"}
    )
    print(newText)
This would output `Hey, Johnny! How's the weather in the backyard?`.
If you don't want to use the default containers (`{{` opening and `}}` closing), you can specify your own with the next to variables of the FillTemplate function. If you only input the first, both containers will equal the first.

    myTemplate = "Hey, [name]! How's the weather in [place]?"
    newText = ib_templatelua.FillTemplate(
    	myTemplate,
        {name = "Johnny", place = "the backyard"},
        "[", "]"
    )
    print(newText)
This will output the same thing.
