# A09 - Using Known Vulnerable Components

This is a simple example of a ReDoS attack made possible by a broken library. To see it in action:

- run `node server`
- load `http://localhost:3000/`
- enter some MarkDown in the textarea and click the Submit button

As you can see, this app has a feature that converts MarkDown text to HTML. Next try:

- enter the text `____88888888:::::8::::::::::::::::88888888888888888888<br />________888_8:::888888:::::::::::::::::::::::::88888888888___888 ___________88:::::88888888::::::m::::::::::::::88888888888____8 _________888888888888888888:M::::::::::::::::8888888888888 ________88888888888888888888:::::::::::::::::M88888888888888 ________8888888888888888888888:::::::::::::M8888888888888888 _________8888888888888888888888::::::::::M888888888888888888 ________8888888888888888::88888:::::::::M88888888888888888888 ______88888888888888888:::88888::::::::M888888888888888___8888 _____88888888888888888:::88888::::::M:::::;o*M*o;888888888____88 ____88888888888888888:::8888:::::::M::::::::::::::::::88888888____8 ___88888888888888888::::88:::::::::M:;:::::::::::::::::::888888888 __8888888888888888888:::8:::::::::M::::aAa::::::::::::M8888888888_______ 8 __88___8888888888::88::::8::::::::M::::::::::::::::::::888888888888888_8 888 _88__88888888888:::8::::::::::::::M:::::::::::;::::::::88:88888888888888 888 _8__8888888888888::::::::::::::::M::::@@@@::::::::8w8888888888888888 __88888888888:888:::::::::::::::M:::::::@a@:::::::M8i888888888888888 _8888888888::::88:::::::::::::::M888:::::::::::::::::M88z888888888888888 88 8888888888:::::8::::::::::::::::M88888::::::::::::MM88888888888888888888 8 888888888:::::8::::::::::::::::M8888888MAmAMVMM88*88888888___88888888 888888_M::::::::::::::::::::::M888888888:::::::::MM8888888888888___88888 88 8888___M:::::::::::::::::::::M88888888888:::::::MM88888888888888____8888 8 _888___M::::::::::::::::::::M8888888888888M:::::mM888888888888____888 __888__M:::::::::::::::::::M8888:8888888888888:::m::Mm8888_8888___888 ___88__M:::::::::::::::::::8888:8888888888888888:::::::::Mm8___8888___88 8 ___88__M::::::::::::::::8888M::88888::888888888888::::::::::Mm8888____88&#38;#160;<br />___8___MM:::::::::::::8888M::::8888:::::888888888888::::::::::::Mm8_____ 4 _______8M::::::::::::8888M:::::::888::::::::88:::8888888::::::::::::::Mm_____2 ______88MM:::::::::8888M::::::::::88:::::::::8:::::888888:::::::::M::::: :M _____8888M:::::::::888MM::::::::::::8::::::::::::M::::8888:::::::::::M:: ::M ____88888M:::::::::88:M:::::::::::::::8:::::::::::::M:::8888:::::::::::: M::M ___88_888MM::::::888:M:::::::::::::::::::::::::::::::M:8888::::::::::::: :M: ___8_88888M::::::88::M:::::::::::::::::::::::::::::::::MM:88:::::::::::: :::::M _____88888M::::::88::M:::::::::::::::::*88*::::::::::::M:88::::::::::::: :::::::M ____888888M::::::88::M:::::::::::::::88@@88::::::::::M::88:::::::::::::: :::::::M ____888888MM::::88::MM:::::::::::::88@@88:::::::::::M::::8:::::::::::::: :::::::*8 ____88888__M::::::8::MM:::::::::::::::*88*:::::::::::::M:::::::::::::::: ::::::::::::88@<br />____8888___MM:::::::::MM::::::::::::::::::::::::::::::MM:::::::::::::::: :::::::::::88@@<br />_____888____M:::::::::::MM:::::::::::::::::::::::::::MM::M:::::::::::::: ::::::::::::888/ _____888____MM:::::::::::MMM:::::::::::::::::::::MM::::MM::::::::::::::: ::::::::::MM ______88_____M:::::::::::::MMMM::::::::::::MMMM::::::::MM::::::::::::::: :::::MMM _______88____MM:::::::::::::::MMMMMMMMMMM:::::::::::::MMM:::::::MMMMMM ________88____MM:::::::::::::::::::MMMMM::::::::::::::::::::MMMMMMMMMMII<br />_________88___8MM::::::::::::::::::::::::::::::::::::::::::::::::::MMMMM MMM __________8___88MM:::::::::::::::::::::::::::::::::M:::M:::::::::::MMM ______________888MM:::::::::::::::::::::::::::MM::::::::MM::::::MM _____________88888MM::::::::::::::::::::::MMM:::::::::mM:::::MM<br /><br />`

Uh...the server froze. Let's try refreshing the page. Looks like the server is not responsive. Damn.