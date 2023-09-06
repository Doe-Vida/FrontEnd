# Front end - Doe Vida

## Folders Organization

**lib/** <br>
  **. views/** - for all the visual part of the app (pages, widgets and dialogs - obs: dialogs will be use for feedback messages (error, sucessfly, etc)) <br>
  **. models** - for data model classes <br>
  **. services** - for network services or business logic - API, data base, etc <br>
  **. utils** - for utility function - especifics functions of the project. ex: number format <br>
  **. constants** - for evetything that is constant in the app. Ex: color, images, icons, etc  <br>
  

## Tips

**Override TextStyle** 
``` dart
TextStyleClass customTextStyle = TextStyleClass();

final TextStyle myHeadline1 = customTextStyle.headline1.copyWith(fontSize: 32.0);
```

**Override word and references in all project**
select the word + F2