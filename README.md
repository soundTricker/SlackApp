SlackApp
========

Slack API Library for Google Apps Script

## Library Key

```
M3W5Ut3Q39AaIwLquryEPMwV62A3znfOO
```

## API Document

https://script.google.com/macros/library/versions/d/M3W5Ut3Q39AaIwLquryEPMwV62A3znfOO

## How to use.

### Use Slack API Token.

1. Import `SlackApp` library to your project. See [Documents](https://developers.google.com/apps-script/guide_libraries?hl=ja)
  * Library Key `M3W5Ut3Q39AaIwLquryEPMwV62A3znfOO`
2. Get a Slack API token from [Slack](https://api.slack.com/).
3. Write a code!
```javascript
function myFunction(){

  //Get properties.
  var prop =  PropertiesService.getUserProperties().getProperties();

  //Create an instance.
  var slackApp = SlackApp.create(prop.slackToken); 
 
  //My first Message!
  slackApp.chatPostMessage(prop.slackChannel, "Hi Slack.", {
    username : "My First Bot",
    icon_emoji : ":+1:" 
  });
}

//If you want to create a replyable bot, you can use doGet method and [Outgoing WebHooks](https://exchaos.slack.com/services/new/outgoing-webhook) via Slack.

function doGet(e) {

  //Get properties.
  var prop =  PropertiesService.getScriptProperties().getProperties();
  if (!e) {

    //for Test
    e = {
      parameter : {
        token : prop.verifyToken,
        team_id : "T0001",
        channel_id : "C2147483705",
        channel_name : "test",
        timestamp : "1355517523.000005",
        user_id : "U2147483697",
        user_name : "Steve",
        text : "MyFirstBot: Hi",
        trigger_word : "MyFirstBot:"
      }
    };
  }

  if (prop.verifyToken != e.parameter.token) {
    throw new Error("invalid token.");
  }

  //Create an instance.
  var slackApp = SlackApp.create(prop.slackToken); 
 
  //My first Message!
  slackApp.chatPostMessage(e.parameter.channel_id, "Hi " + e.parameter.user_name, {
    username : "My First Bot",
    icon_emoji : ":+1:" 
  });

  return null;
}

```

### Use OAuth2

TODO (Library is already supported, but not documented.)