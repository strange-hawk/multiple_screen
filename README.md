# multiple_screen
This script allows to make more than one screens

**Note** - There are two ways to swipe between multiple screens
 - using bottom of AppBar
 - using BottomNavigationBar
 
------------------- 
 ## Using BottomNavigationBar
 

 bottomNavigationBar: Material(
 
        color: Colors.teal,
        
        child: TabBar(
        
          controller: tabController,
          
            tabs: <Widget>[
            
              Tab(
              
                icon: Icon(Icons.favorite),
                
              ),
              
              Tab(
              
                icon: Icon(Icons.email),
                
              )
              
            ]
            
        )
        
      ),
      
 -----------------------
## Using Bottom of AppBar

bottom: TabBar(

            controller: tabController,
            
            tabs: <Widget>[
            
              Tab(
              
                icon: Icon(Icons.favorite),
                
              ),
              
              Tab(
              
                icon: Icon(Icons.email),
                
              )
              
            ]
            
        ),
