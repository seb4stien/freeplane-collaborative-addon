############################
# common
############################
def doAction(action):
    # compare : wait("compare-button.png")
    # update : wait("update-button.png")
    # commit : wait("commit-button.png")
    #click(action + "-button.png")
    #return
    if action == "compare":
        type(Key.F10)
    elif action == "update":
        type(Key.F11)
    elif action == "commit":
        type(Key.F12)
    else:
        popup("Unknown action")

def doConfirm():
    if (exists("ok-button.png")):
        click("ok-button.png") 
    else:
        click("1376306862302.png")

def waitMindMapLong():
    sleep(1)
    wait("1373882388791.png", 15)
    

def waitMindMap():
    sleep(1)
    wait("1373882388791.png")

def closeMap():
    type("w", Key.CTRL)

def setQuietMode(switch):
    wait("1376226063138.png")
    type(",", Key.CTRL)
    wait("1376226110773.png")
    click("1376226119369.png")
    click("1376226128916.png")
    modif = 0
    if (switch == "on"):
        if (exists(Pattern("1376226481281.png").exact())):
            click(find(Pattern("1376226391315.png").targetOffset(44,0))) 
            modif = 1
    else:
        if (exists(Pattern("1376226558204.png").exact())):
            click(find(Pattern("1376226391315.png").targetOffset(44,0)))
            modif = 1
    click("1376226510613.png") 
    sleep(1)
    if (modif == 1):
        doConfirm()

def setVerboseMode(switch):
    wait("1376226063138.png")
    type(",", Key.CTRL)
    wait("1376226110773.png")
    click("1376226119369.png")
    click("1376226128916.png")
    modif = 0
    if (switch == "on"):
        if (exists(Pattern("1376306117551.png").exact())):
            click(find(Pattern("1376306154468.png").targetOffset(50,0))) 
            modif = 1
    else:
        if (not(exists(Pattern("1376306117551.png").exact()))):
            click(find(Pattern("1376306154468.png").targetOffset(50,0))) 
            modif = 1
    click("1376226510613.png") 
    sleep(1)
    if (modif == 1):
        doConfirm()

####################################
# init
####################################

#import subprocess
#popup("Start cleaning")
#p = subprocess.Popen("c:\\My program files\\init-tests.bat")
#p.wait()
#popup("Cleaning Ok")



####################################
# no versionning
####################################

def testNoVersionning():
    # init
    openApp(r'C:\My Program Files\Freeplane\freeplane.exe c:\users\dmxf8215\documents\personnel\projets\freeplane\tests\novcs\tests.mm')
    waitMindMapLong()
    
    for action in ('compare', 'update', 'commit'):
        doAction(action)
        wait("1373710934684.png")
        doConfirm()
        waitMindMap()
    closeMap()


####################################
# fake versionning
####################################

def testFakeVersionning(vcs):
    # init
    myApp = "C:\\My Program Files\\Freeplane\\freeplane.exe c:\\users\\dmxf8215\\documents\\personnel\\projets\\freeplane\\tests\\" + vcs + "-fake\\tests.mm"

    openApp(myApp)
    waitMindMap()

    for action in ('compare', 'update', 'commit'):
        doAction(action)
        try:
            wait("1373928728167.png")
        except:
            find("1373819751379.png")
            
        doConfirm()
        waitMindMap()
        
    closeMap()

###################################
# add test versionning
###################################

def testAddToVersionning(vcs):
    # init
    myApp = "C:\\My Program Files\\Freeplane\\freeplane.exe c:\\users\\dmxf8215\\documents\\personnel\\projets\\freeplane\\tests\\" + vcs + "-userA\\mindmaps\\test-to-add.mm"

    openApp(myApp)
    waitMindMapLong()

    # compare
    doAction("commit")
    wait("1373825742171.png")
    click("1373825770747.png")
    wait("1373825811828.png")
    doConfirm()
    
    doAction("commit")
    wait("1373825742171.png")
    click("1373825781197.png")
    wait("1373825932424.png")   
    doConfirm()
    wait("1373825968949.png")
    click("1373829749083.png")
    wait("1374071065186.png")
    doConfirm()
    doAction("commit")
    type("plop")
    click("1373829749083.png")
    
    wait("1373826059964.png")
    doConfirm()
    if vcs == "git":
        wait("1373894925109.png")
        click("1373894937127.png")
        wait("1373894953715.png")
        doConfirm()        

    waitMindMap()
    closeMap()


#####################################
# up2date mindmap
####################################
def testNothingToDo(vcs, quiet):
    # init
    myApp = "C:\\My Program Files\\Freeplane\\freeplane.exe c:\\users\\dmxf8215\\documents\\personnel\\projets\\freeplane\\tests\\" + vcs + "-userA\\mindmaps\\tests.mm"

    openApp(myApp)
    waitMindMapLong()

    doAction('compare')
    wait("1373880970061.png", 10)
    doConfirm()
    waitMindMap()


    doAction('update')
    if (quiet):
        wait("1376225689812.png", 10)
    else: 
        wait("1373880970061.png", 10)
        doConfirm()
    waitMindMap()

    doAction("commit")
#    if vcs == "git":
#        wait("1373882037155.png")
#        paste("plop")
#        click("1373882113393.png")       
    if (quiet):
        wait("1376225835742.png", 10)
    else:
        wait("1373881045981.png", 10)
        doConfirm()
    waitMindMap()
    closeMap()

#####################################
# commit / update
####################################
def testMerge(vcs, conflict):
    # init
    myApp = "C:\\My Program Files\\Freeplane\\freeplane.exe c:\\users\\dmxf8215\\documents\\personnel\\projets\\freeplane\\tests\\" + vcs + "-userA\\mindmaps\\tests.mm"

    openApp(myApp)
    waitMindMapLong()

    type("1373881357895.png", Key.ENTER)
    paste("branch c") 
    type(Key.ENTER)
    sleep(1)
    type("s", Key.CTRL)    
    
    # diff
    if vcs != "git":
        doAction("compare")
        wait("1373926818907.png")
        doConfirm()
        waitMindMap()
    
    # update
    #doAction("update")
    #wait("1373881993621.png")
    #doConfirm()
    #waitMindMap()
    
    # commit
    doAction("commit")
    wait("1373882037155.png")
    paste("plop")
    click("1373882113393.png")
    wait("1373882135697.png")   
    doConfirm()
    if vcs == "git":
        wait("1373926143621.png")
        click("1373926157464.png")
        wait("1373926174535.png")
        doConfirm()
    waitMindMap()

    # check
    if vcs != "git":
        doAction("compare")
        wait("1373880970061.png")
        doConfirm()
        waitMindMap()

    # add a second branch for later update
    if conflict == "false":
        type("1373928278544.png", Key.INSERT)
        paste("new leaf a.a.a")
        type(Key.ENTER)
        sleep(1)
    else:
        type("1373882836977.png", Key.ENTER)
        paste("branch e") 
        type(Key.ENTER)
    sleep(1)
    type("s", Key.CTRL)    
    closeMap()
    
## user B : update
    # init
    myApp = "C:\\My Program Files\\Freeplane\\freeplane.exe c:\\users\\dmxf8215\\documents\\personnel\\projets\\freeplane\\tests\\" + vcs + "-userB\\mindmaps\\tests.mm"

    openApp(myApp)
    sleep(2)
    waitMindMapLong()

    # diff
    doAction("compare")
    wait("1373882752480.png")
    doConfirm()
    waitMindMap()
    
    # update
    doAction("update")
    wait("1373882819103.png", 10)
    click("1373885970844.png")   
    wait("1373882836977.png")


    # modif & commit
    type("1373882836977.png", Key.ENTER)
    paste("branch d") 
    type(Key.ENTER)
    sleep(1)
    type("s", Key.CTRL)    
    doAction("commit")
    wait("1373882037155.png")
    paste("plop")
    click("1373882113393.png")
    wait("1373927489627.png")
    doConfirm()
    if vcs == "git":
        wait("1373926143621.png")
        click("1373926157464.png")
        wait("1373926174535.png")
        doConfirm()
    waitMindMap()
    closeMap()

## back to user A and update
    myApp = "C:\\My Program Files\\Freeplane\\freeplane.exe c:\\users\\dmxf8215\\documents\\personnel\\projets\\freeplane\\tests\\" + vcs + "-userA\\mindmaps\\tests.mm"

    openApp(myApp)
    sleep(2)
    waitMindMapLong()

    doAction("update")

    if conflict == "true":
        if vcs == "git":
            wait("1374162538809.png")
            doConfirm()
            sleep(2)
            doAction("commit")
            wait("1373882037155.png")
            paste("plop")
            click("1373882113393.png")
            wait("1373927489627.png")
            sleep(2)
            doConfirm()
            wait("1373926143621.png")
            click("1374162645369.png")
            sleep(2)
            doAction("update")
            wait("1374163494960.png") 
        else:
        
            wait("1373888276467.png", 10)
        doConfirm()
    
    
        doConfirm()
    else:
        if vcs == "git":
            wait("1374162538809.png")
            doConfirm()
            doAction("commit")
            wait("1373882037155.png")
            paste("plop")
            click("1373882113393.png")
            wait("1373927489627.png")
            doConfirm()
            wait("1373926143621.png")
            click("1374162645369.png")
            doAction("update")
        wait("1373882819103.png", 10)
        click("1373932420483.png")
        wait("1373883510086.png")
    type("s", Key.CTRL)    
    closeMap()


def testLocalVersionningInQuietMode(vcs):
    # init
    myApp = "C:\\My Program Files\\Freeplane\\freeplane.exe c:\\users\\dmxf8215\\documents\\personnel\\projets\\freeplane\\tests\\" + vcs + "-noremote\\tests.mm"

    openApp(myApp)
    waitMindMapLong()

    type("1373881357895.png", Key.ENTER)
    paste("branch c") 
    type(Key.ENTER)
    sleep(1)
    type("s", Key.CTRL)    

    # compare    
    doAction("commit")
    wait("1373825742171.png")
    click("1373825781197.png")
    wait("1373825968949.png")
    paste("plop")
    doConfirm()
    wait("1376230843086.png")

    type("1373928278544.png", Key.INSERT)
    paste("new leaf a.a.a")
    type(Key.ENTER)
    sleep(1)
    type("s", Key.CTRL)    
    
    doAction("commit")
    wait("1373825968949.png")
    paste("plop")   
    doConfirm()    
    wait("1376230843086.png")

    doAction("update")
    wait("1376306904240.png")   
                
#
# Main
#


#setQuietMode("off")
#setVerboseMode("off")
#testNoVersionning()

#testFakeVersionning('cvs')
#testAddToVersionning('cvs')
#testNothingToDo('cvs', 0)
#testMerge('cvs', 'false')
#testMerge('cvs', 'true')

#testFakeVersionning('svn')
#testAddToVersionning('svn')
#testNothingToDo('svn', 0)
#testMerge('svn', 'false')
#testMerge('svn', 'true')

#testFakeVersionning('git')
#testAddToVersionning('git')
#testNothingToDo('git', 0)
#testMerge('git', 'false')

#setQuietMode("on")
#testNothingToDo('cvs', 1)
#testNothingToDo('svn', 1)
#testNothingToDo('git', 1)
testLocalVersionningInQuietMode('git')

#testMerge('git', 'true')
