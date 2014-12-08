`
var _ = Underscore.load();

/**
 * @type {String}
 */
var SCOPE_IDENTIFY="identify";
/**
 * @type {String}
 */
var SCOPE_READ="read";
/**
 * @type {String}
 */
var SCOPE_POST="post";

/**
 * Create an Slack API Client 
 * @param {String} token API Token via https://api.slack.com/tokens
 * @return {SlackApp} return an Slack API Client 
 */
function create(token){
  return new SlackApp(null, null, null, null, {token : token});
}

/**
 * Create an Slack API Client by ClientId
 * @param {String} team team ID
 * @param {String} clientId client id
 * @param {String} clientSecret client secret
 * @param {String[]} scopes scopes
 * @param {Object} option optional the option parameter. You can set property below.
 * <table>
 *   <tr>
 *     <td><b>Name</b></td>
 *     <td><b>Type</b></td>
 *     <td><b>Description</b></td>
 *   </tr>
 *   <tr>
 *     <td>token</td>
 *     <td><code>String</code></td>
 *     <td>The API Token via <a href="https://api.slack.com/tokens">https://api.slack.com/tokens</a></td>
 *   </tr>
 *   <tr>
 *     <td>name</td>
 *     <td><code>String</code></td>
 *     <td>The suffix name for PropertiesService key. Default : <code>""</code></td>
 *   </tr>
 * </table>
 * @return {SlackApp} return an Slack API Client 
 */
function createByClientId(team, clientId, clientSecret, scopes, option){
  return new SlackApp(team, clientId, clientSecret, scopes, option);
}

/**
 * This method helps you test your calling code.<br>
 * https://api.slack.com/methods/api.test
 * @param {Object} params you can set below.
 * <table class="arguments table table-condensed">
 *         <tbody>
 *         <tr>
 *             <td><b>Name</b></td>
 *             <td><b>Type</b></td>
 *             <td><b>Description</b></td>
 *         </tr>
 *         <tr>
 *             <td style="white-space:nowrap"><code>error</code></td>
 *             <td style="white-space:nowrap"><code>Object</code></td>
 *             <td><p>Error response to return</p></td>
 *         </tr>
 *         <tr>
 *             <td style="white-space:nowrap"><code>foo</code></td>
 *             <td style="white-space:nowrap"><code>bar</code></td>
 *             <td><p>example property to return</p></td>
 *         </tr>
 *         </tbody></table>
 * @return {Object} api result. The response includes any supplied arguments:
 *  <pre><code>
 * {
 *     "ok": true,
 *     "args": {
 *         "foo": "bar",
 *     }
 * }
 *  </code></pre>
 *  If called with an <code>error</code> argument an error response is returned:
 *  <pre><code>
 *  {
 *     "ok": false,
 *     "error": "my_error",
 *     "args": {
 *         "error": "my_error",
 *     }
 * }
 * </code></pre>
 */
function apiTest(params) {
    throw new Error("this method should not call direct, please call create method.")
}

/**
 * This method checks authentication and tells you who you are.
 * @return {Object} api result
 * <pre><code>
 * {
 *     "ok": true,
 *     "url": "https:\/\/myteam.slack.com\/",
 *     "team": "My Team",
 *     "user": "cal",
 *     "team_id": "T12345",
 *     "user_id": "U12345"
 * }
 * </code></pre>
 */
function authTest() {
    throw new Error("this method should not call direct, please call create method.")
}

/**
 * This method returns a portion of messages/events from the specified channel. To read the entire history for a channel, call the method with no latest or oldest arguments, and then continue paging using the instructions below.
 * https://api.slack.com/methods/channels.history
 * @param {string} channelId Channel to fetch history for.
 * @param {Object} optParams optional
  * <table class="arguments table table-condensed">
 *         <tbody>
 *         <tr>
 *             <td><b>Name</b></td>
 *             <td><b>Type</b></td>
 *             <td><b>Description</b></td>
 *         </tr>
 *         <tr>
 *             <td style="white-space:nowrap"><code>latest</code></td>
 *             <td style="white-space:nowrap"><code>String</code></td>
 *             <td><p>Timestamp of the oldest recent seen message. like <code>1234567890.123456</code></p></td>
 *         </tr>
 *         <tr>
 *             <td style="white-space:nowrap"><code>oldest</code></td>
 *             <td style="white-space:nowrap"><code>String</code></td>
 *             <td><p>Timestamp of the latest previously seen message. like <code>1234567890.123456</code></p></td>
 *         </tr>
 *         <tr>
 *             <td style="white-space:nowrap"><code>count</code></td>
 *             <td style="white-space:nowrap"><code>Number</code></td>
 *             <td><p>Number of messages to return, between 1 and 1000. like <code>100</code></p></td>
 *         </tr>
 *         </tbody></table>
 * @return {Object} api result
 *  <pre><code>
 *  {
 *     "ok": true,
 *     "latest": "1358547726.000003",
 *     "messages": [
 *         {
 *             "type": "message",
 *             "ts": "1358546515.000008",
 *             "user": "U2147483896",
 *             "text": "Hello"
 *         },
 *         {
 *             "type": "message",
 *             "ts": "1358546515.000007",
 *             "user": "U2147483896",
 *             "text": "World",
 *             "is_starred": true,
 *         },
 *         {
 *             "type": "something_else",
 *             "ts": "1358546515.000007",
 *             "wibblr": true
 *         }
 *     ],
 *     "has_more": false
 * }
 * </code></pre>
 */
function channelsHistory(channelId, optParams) {
    throw new Error("this method should not call direct, please call create method.")
}

/**
 * This method returns information about a team channel.
 * @param {string} channelId Channel to get info on
 * @return {Object} api result
 * <pre><code>
 * {
 *     "ok": true,
 *     "channel": {
 *         "id": "C024BE91L",
 *         "name": "fun",
 * 
 *         "created": "1360782804",
 *         "creator": "U024BE7LH",
 * 
 *         "is_archived": false,
 *         "is_general": false,
 *         "is_member": true,
 * 
 *         "members": [ … ],
 * 
 *         "topic": { … },
 *         "purpose": { … }
 * 
 *         "last_read": "1401383885.000061",
 *         "latest": { … }
 *         "unread_count": 0,
 *     }
 * }
 * </code></pre>
 */
function channelsInfo(channelId) {
    throw new Error("this method should not call direct, please call create method.")
}

/**
 * This method is used to invite a user to a channel. The calling user must be a member of the channel.
 * @param {string} channelId Channel to invite user to.
 * @param {string} userId User to invite to channel.
 * @return {Object} api result 
 * <pre><code>
 * {
 *     "ok": true,
 *     "channel": {
 *         "id": "C024BE91L",
 *         "name": "fun",
 *         "created": "1360782804",
 *         "creator": "U024BE7LH",
 *         "is_archived": false,
 *         "is_member": true,
 *         "is_general": false,
 *         "last_read": "1401383885.000061",
 *         "latest": { … }
 *         "unread_count": 0,
 *         "members": [ … ],
 *         "topic": {
 *             "value": "Fun times",
 *             "creator": "U024BE7LV",
 *             "last_set": "1369677212"
 *         },
 *         "purpose": {
 *             "value": "This channel is for fun",
 *             "creator": "U024BE7LH",
 *             "last_set": "1360782804"
 *         }
 *     },
 * }
 * </code></pre>
 */
function channelsInvite(channelId, userId) {
    throw new Error("this method should not call direct, please call create method.")
}

/**
 * This method is used to join a channel. If the channel does not exist, it is created.
 * @param {string} channelName Name of channel to join
 * @return {Object} api result
 *  <pre><code>
 *  {
 *     "ok": true,
 *     "channel": {
 *         "id": "C024BE91L",
 *         "name": "fun",
 *         "created": "1360782804",
 *         "creator": "U024BE7LH",
 *         "is_archived": false,
 *         "is_member": true,
 *         "is_general": false,
 *         "last_read": "1401383885.000061",
 *         "latest": { … }
 *         "unread_count": 0,
 *         "members": [ … ],
 *         "topic": {
 *             "value": "Fun times",
 *             "creator": "U024BE7LV",
 *             "last_set": "1369677212"
 *         },
 *         "purpose": {
 *             "value": "This channel is for fun",
 *             "creator": "U024BE7LH",
 *             "last_set": "1360782804"
 *         }
 *     },
 * }
 *  </code></pre>
 *  If you are already in the channel, the response is slightly different. already_in_channel will be true, and a limited channel object will be returned. This allows a client to see that the request to join GeNERaL is the same as the channel #general that the user is already in:
 *  <pre><code>
 *  {
 *     "ok": true,
 *     "already_in_channel": true,
 *     "channel": {
 *         "id": "C024BE91L",
 *         "name": "fun",
 *         "created": "1360782804",
 *         "creator": "U024BE7LH",
 *         "is_archived": false,
 *         "is_general": false
 *     }
 * }
 *  </code></pre>
 */
function channelsJoin(channelName) {
    throw new Error("this method should not call direct, please call create method.")
}

/**
 * This method allows a user to remove another member from a team channel.
 * @param {string} channelId Channel to remove user from.
 * @param {string} userId User to remove from channel.
 * @return {Object} api result
 * <pre><code>
 * {
 *     "ok": true
 * }
 * </code></pre>
 */
function channelsKick(channelId, userId) {
    throw new Error("this method should not call direct, please call create method.")
}

/**
 * This method is used to leave a channel.
 * @param {string} channelId Channel to leave
 * @return {Object} api result
 * <pre><code>
 * {
 *     "ok": true
 * }
 * </code></pre>
 * This method will not return an error if the user was not in the channel before it was called. Instead the response will include a not_in_channel property:
 * <pre><code>
 * {
 *     "ok": true,
 *     "not_in_channel": true
 * }
 * </code></pre>
 */
function channelsLeave(channelId) {
    throw new Error("this method should not call direct, please call create method.")
}

/**
 * This method returns a list of all channels in the team. This includes channels the caller is in, channels they are not currently in, and archived channels. The number of (non-deactivated) members in each channel is also returned.
 * @param {boolean} optIsExecludeArchived optional true/false
 * @return {Object} api result
 * <pre><code>
 * {
 *     "ok": true,
 *     "channels": [
 *         {
 *             "id": "C024BE91L",
 *             "name": "fun",
 *             "created": "1360782804",
 *             "creator": "U024BE7LH",
 *             "is_archived": false,
 *             "is_member": false,
 *             "num_members": 6,
 *             "topic": {
 *                 "value": "Fun times",
 *                 "creator": "U024BE7LV",
 *                 "last_set": "1369677212"
 *             },
 *             "purpose": {
 *                 "value": "This channel is for fun",
 *                 "creator": "U024BE7LH",
 *                 "last_set": "1360782804"
 *             }
 *         },
 *         ....
 *     ]
 * }
 * </code></pre>
 */
function channelsList(optIsExecludeArchived) {
    throw new Error("this method should not call direct, please call create method.")
}

/**
 * This method moves the read cursor in a channel.
 * @param {string} channelId Channel to set reading cursor in.
 * @param {Number} timestamp Timestamp of the most recently seen message.
 * @return {Object} api result
 * <pre><code>
 * {
 *     "ok": true
 * } 
 * </code></pre>
 */
function channelsMark(channelId, timestamp) {
    throw new Error("this method should not call direct, please call create method.")
}

/**
 * This method is used to change the purpose of a channel. The calling user must be a member of the channel.
 * @param {string} channelId Channel to set the purpose of
 * @param {string} purpose The new purpose
 * @return {Object} api result
 */
function channelsSetPurpose(channelId, purpose) {
    throw new Error("this method should not call direct, please call create method.")
}

/**
 * This method is used to change the topic of a channel. The calling user must be a member of the channel.
 * @param {string} channelId Channel to set the topic of
 * @param {string} topic The new topic
 * @return {Object} api result
 */
function channelsSetTopic(channelId, topic) {
    throw new Error("this method should not call direct, please call create method.")
}

/**
 * This method deletes a message from a channel.
 * @param {string} channelId Channel containing the message to be deleted.
 * @param {Number} timestamp Timestamp of the message to be deleted.
 * @return {Object} api result
 */
function chatDelete(channelId, timestamp) {
    throw new Error("this method should not call direct, please call create method.")
}

/**
 * This method posts a message to a channel.
 * @param {string} channelId Channel to send message to. Can be a public channel, private group or IM channel. Can be an encoded ID, or a name.
 * @param {string} text Text of the message to send. See below for an explanation of formatting.
 * @param {Object} option optional please see https://api.slack.com/methods/chat.postMessage
 * @return {Object} api result
 */
function chatPostMessage(channelId, text , option) {
    throw new Error("this method should not call direct, please call create method.")
}

/**
 * This method updates a message in a channel.
 * @param {string} channelId Channel containing the message to be updated.
 * @param {Number} timestamp Timestamp of the message to be updated.
 * @param {string} text New text for the message, using the default formatting rules.
 * @return {Object} api result
 */
function chatUpdate(channelId, timestamp, text) {
    throw new Error("this method should not call direct, please call create method.")
}

/**
 * This method lists the custom emoji for a team.
 * @return {Object} api result
 */
function emojiList() {
    throw new Error("this method should not call direct, please call create method.")
}

/**
 * This method returns information about a file in your team.
 * @param {string} fileId File to fetch info for
 * @param {Object} option optinal
 * @return {Object} api result
 */
function filesInfo(fileId, option) {
    throw new Error("this method should not call direct, please call create method.")
}

/**
 * This method returns a list of files within the team. It can be filtered and sliced in various ways.
 * @param {Object} option optional
 * @return {Object} api result
 */
function filesList(option) {
    throw new Error("this method should not call direct, please call create method.")
}

/**
 * This method allows you to create or upload an existing file.
 * @param {Blob} fileBlob file blob
 * @param {Object} option optional
 * @return {Object} api result
 */
function filesUpload(fileBlob, option) {
    throw new Error("this method should not call direct, please call create method.")
}

/**
 * This method creates a private group.
 * @param {string} name Name of group to create
 * @return {Object} api result
 */
function groupsCreate(name) {
    throw new Error("this method should not call direct, please call create method.")
}

/**
 * This method takes an existing private group and performs the following steps:
 *
 * Renames the existing group (from "example" to "example-archived").
 * Archives the existing group.
 * Creates a new group with the name of the existing group.
 * Adds all members of the existing group to the new group.
 * This is useful when inviting a new member to an existing group while hiding all previous chat history from them. In this scenario you can call groups.createChild followed by groups.invite.
 *
 * The new group will have a special parent_group property pointing to the original archived group. This will only be returned for members of both groups, so will not be visible to any newly invited members.
 * @param {string} channelId Group to clone and archive.
 * @return {Object} api result
 */
function groupsCreateChild(channelId) {
    throw new Error("this method should not call direct, please call create method.")
}

/**
 * This method returns a portion of messages/events from the specified private group. To read the entire history for a group, call the method with no latest or oldest arguments, and then continue paging using the instructions below.
 * @param {string} channelId Group to fetch history for.
 * @param {Object} option optional
 * @return {Object} api result
 */
function groupsHistory(channelId, option) {
    throw new Error("this method should not call direct, please call create method.")
}

/**
 * This method is used to invite a user to a private group. The calling user must be a member of the group.
 *
 * To invite a new member to a group without giving them access to the archives of the group call the groups.createChild method before inviting.
 * @param {string} channelId Private group to invite user to.
 * @param {string} userId User to invite.
 * @return {Object} api result
 */
function groupsInvite(channelId, userId) {
    throw new Error("this method should not call direct, please call create method.")
}

/**
 * This method allows a user to remove another member from a private group.
 * @param {string} channelId Group to remove user from.
 * @param {string} userId User to remove from group.
 * @return {Object} api result
 */
function groupsKick(channelId, userId) {
    throw new Error("this method should not call direct, please call create method.")
}

/**
 * This method is used to leave a private group.
 * @param {string} channelId Group to leave
 * @return {Object} api result
 */
function groupsLeave(channelId) {
    throw new Error("this method should not call direct, please call create method.")
}

/**
 * This method returns a list of groups in the team that the caller is in and archived groups that the caller was in. The list of (non-deactivated) members in each group is also returned.
 * @param {Boolean} optIsExecludeArchived optional true/false Don't return archived groups.
 * @return {Object} api result
 */
function groupsList(optIsExecludeArchived) {
    throw new Error("this method should not call direct, please call create method.")
}

/**
 * This method moves the read cursor in a private group.
 * @param {string} channelId Group to set reading cursor in.
 * @param {Number} timestamp Timestamp of the most recently seen message.
 * @return {Object} api result
 */
function groupsMark(channelId, timestamp) {
    throw new Error("this method should not call direct, please call create method.")
}

/**
 * This method is used to change the purpose of a private group. The calling user must be a member of the private group.
 * @param {string} channelId Private group to set the purpose of
 * @param {string} purpose The new purpose
 * @return {Object} api result
 */
function groupsSetPurpose(channelId, purpose) {
    throw new Error("this method should not call direct, please call create method.")
}

/**
 * This method is used to change the topic of a private group. The calling user must be a member of the private group.
 * @param {string} channelId Private group to set the topic of
 * @param {string} topic The new topic
 * @return {Object} api result
 */
function groupsSetTopic(channelId, topic) {
    throw new Error("this method should not call direct, please call create method.")
}

/**
 * This method returns a portion of messages/events from the specified direct message channel. To read the entire history for a direct message channel, call the method with no latest or oldest arguments, and then continue paging using the instructions below.
 * @param {string} channelId Direct message channel to fetch history for.
 * @param {Object} option optional
 * @return {Object} api result
 */
function imHistory(channelId, option) {
    throw new Error("this method should not call direct, please call create method.")
}

/**
 * This method returns a list of all im channels that the user has.
 * @return {Object} api result
 */
function imList() {
    throw new Error("this method should not call direct, please call create method.")
}

/**
 * This method moves the read cursor in a direct message channel.
 * @param {string} channelId Direct message channel to set reading cursor in.
 * @param {Number} timestamp Timestamp of the most recently seen message.
 * @return {Object} api result
 */
function imMark(channelId, timestamp) {
    throw new Error("this method should not call direct, please call create method.")
}

/**
 This method lets you manually override the calling user's presence value. Consult the presence documentation for more details.
 *
 * @return {Object} api result
 */
function presenceSetAway() {
    throw new Error("this method should not call direct, please call create method.")
}

/**
 This method lets you manually override the calling user's presence value. Consult the presence documentation for more details.
 *
 * @return {Object} api result
 */
function presenceSetActive() {
    throw new Error("this method should not call direct, please call create method.")
}

/**
 * This method allows to to search both messages and files in a single call.
 * @param {string} query Search query. May contains booleans, etc.
 * @param {Object} option optional
 * @return {Object} api result
 */
function searchAll(query, option) {
    throw new Error("this method should not call direct, please call create method.")
}

/**
 * This method returns files matching a search query.
 * @param {string} query Search query. May contains booleans, etc.
 * @param {Object} option optional
 * @return {Object} api result
 */
function searchFiles(query, option) {
    throw new Error("this method should not call direct, please call create method.")
}

/**
 * This method returns messages matching a search query.
 * @param {string} query Search query. May contains booleans, etc.
 * @param {Object} option optional
 * @return {Object} api result
 */
function searchMessages(query, option) {
    throw new Error("this method should not call direct, please call create method.")
}

/**
 * This method lists the items starred by a user.
 * @param {Object} option optional
 * @return {Object} api result
 */
function starsList(option) {
    throw new Error("this method should not call direct, please call create method.")
}

/**
 * This method returns information about a team member.
 * @param {string} userId User to get info on
 * @return {Object} api result
 */
function usersInfo(userId) {
    throw new Error("this method should not call direct, please call create method.")
}

/**
 * This method returns a list of all users in the team. This includes deleted/deactivated users.
 * @return {Object} api result
 */
function usersList() {
    throw new Error("this method should not call direct, please call create method.")
}

/**
 * This method lets the slack messaging server know that the authenticated user is currently active. Consult the presence documentation for more details.
 * @return {Object} api result
 */
function usersSetActive() {
    throw new Error("this method should not call direct, please call create method.")
}

/**
 * Save access_token via code
 * @param {string} code access_code
 */
function saveAccessToken(code) {
    throw new Error("this method should not call direct, please call create method.")
}

/**
 * Get Authorize url for oauth2
 * @param {Function} callback
 * @param {Object} optArg optional
 * @return {string}
 */
function getAuthorizeUrl(callback,optArg) {
    throw new Error("this method should not call direct, please call create method.")
}

/**
 * Get Authorize Callback url for oauth2
 * @param callback
 * @param optArg
 */
function getCallbackURL(callback,optArg) {
    throw new Error("this method should not call direct, please call create method.")
}
`
do(exports=@)=>
    class SlackApp
        constructor : (@team, @clientId, @clientSecret, @scopes,@option={})->
            @BASE_URI="https://slack.com"
            @API_ENDPOINT="#{@BASE_URI}/api/"
            @AUTH_ENDPOINT="#{@BASE_URI}/oauth/authorize"
            @prop = PropertiesService.getUserProperties()
    
            @option.name = "" if !@option.name
            @prop.setProperty("SLACK_credencial#{@option.name}", JSON.stringify({"access_token" : @option.token})) if @option.token
    
    
        apiTest : (params={})=>
            @fetch_("api.test", params)

        authTest : ()=>
            @fetch_("auth.test")

        channelsHistory : (channelId, optParams={})=>
            @fetch_("channels.history", _.extend({channel : channelId}, optParams))

        channelsInvite : (channelId, userId)=>
            @fetch_("channels.invite", {channel : channelId, user : userId})

        channelsInfo : (channelId)=>
            @fetch_("channels.info", {channel : channelId})

        channelsJoin : (channelName)=>
            @fetch_("channels.join", {name : channelName})

        channelsKick : (channelId, userId)=>
            @fetch_("channels.kick", {channel : channelId , user : userId})

        channelsLeave : (channelId)=>
            @fetch_("channels.leave", {channel : channelId })

        channelsList : (optIsExecludeArchived=false)=>
            execludeArchived = if optIsExecludeArchived then 1 else 0
            @fetch_("channels.list", {channel : channelId, exclude_archived : execludeArchived })

        channelsMark : (channelId, timestamp)=>
            @fetch_("channels.mark", {channel : channelId, ts : timestamp})

        channelsSetPurpose : (channelId, purpose)=>
            @fetch_("channels.setPurpose", {channel : channelId, purpose : purpose})

        channelsSetTopic : (channelId, topic)=>
            @fetch_("channels.setTopic", {channel : channelId, topic : topic})

        chatDelete : (channelId, timestamp)=>
            @fetch_("chat.delete", {channel : channelId, ts : timestamp})

        chatPostMessage : (channelId, text , option={})=>
            @fetch_("chat.postMessage", _.extend({channel : channelId, text : text}, option))

        chatUpdate : (channelId, timestamp, text)=>
            @fetch_("chat.update", {channel : channelId, text : text, ts : timestamp})

        emojiList : ()=>
            @fetch_("emoji.list")

        filesInfo : (fileId, option={})=>
            @fetch_("files.info", _.extend({file:fileId}, option))

        filesList : (option={})=>
            @fetch_("files.list", option)

        filesUpload : (fileBlob, option={})=>
            @fetch_("files.upload", _.extend({file:fileBlob}, option))

        groupsCreate : (name)=>
            @fetch_("groups.create", {name:name})

        groupsCreateChild : (channelId)=>
            @fetch_("groups.createChild", {channel:channelId})

        groupsHistory : (channelId, option={})=>
            @fetch_("groups.history", _.extend({channel:channelId}, option))

        groupsInvite : (channelId, userId)=>
            @fetch_("groups.invite", {channel:channelId, user : userId})

        groupsKick : (channelId, userId)=>
            @fetch_("groups.kick", {channel:channelId, user : userId})

        groupsLeave : (channelId)=>
            @fetch_("groups.leave", {channel:channelId})

        groupsList : (optIsExecludeArchived=false)=>
            execludeArchived = if optIsExecludeArchived then 1 else 0
            @fetch_("groups.list", {exclude_archived : execludeArchived})

        groupsMark : (channelId, timestamp)=>
            @fetch_("groups.mark", {channel : channelId, ts : timestamp})

        groupsSetPurpose : (channelId, purpose)=>
            @fetch_("groups.setPurpose", {channel : channelId, purpose : purpose})

        groupsSetTopic : (channelId, topic)=>
            @fetch_("groups.setTopic", {channel : channelId, topic : topic})

        imHistory : (channelId, option={})=>
            @fetch_("im.history", _.extend({channel:channelId}, option))

        imList : ()=>
            @fetch_("im.list")

        imMark : (channelId, timestamp)=>
            @fetch_("im.mark", {channel : channelId, ts : timestamp})

        presenceSetAway : ()=>
            @fetch_("presence.set", {presence : "away"})

        presenceSetActive : ()=>
            @fetch_("presence.set", {presence : "active"})

        searchAll : (query, option={})=>
            @fetch_("search.all", _.extend({query:query}, option))

        searchFiles : (query, option={})=>
            @fetch_("search.files", _.extend({query:query}, option))

        searchMessages : (query, option={})=>
            @fetch_("search.messages", _.extend({query:query}, option))

        starsList : (option={})=>
            @fetch_("stars.list", option)

        usersInfo : (userId)=>
            @fetch_("users.info", {user:userId})

        usersList : ()=>
            @fetch_("users.list")

        usersSetActive : ()=>
            @fetch_("users.setActive")

        fetch_ : (rpcMethod, param={}, option={})=>
            access_token = @getCredencial_("access_token")
    
            throw new Error("Please call authorize") if !access_token?
    
            opt =
                method : "POST"
                payload : param
    
            opt.payload.token = access_token
    
            res = @uox => UrlFetchApp.fetch "#{@API_ENDPOINT}#{rpcMethod}" , opt
    
            return JSON.parse(res.getContentText())
    
        getCredencial_ : (name)=>
            return @cache[name] if @cache && @cache[name]
    
            credencial = @prop.getProperty("SLACK_credencial#{@option.name}")
            return null if !credencial?
            @cache = JSON.parse credencial
            return @cache[name]
        
        # authorize : ()=>
        #     res = @uox => UrlFetchApp.fetch "#{@API_ENDPOINT}/oauth.access" ,
        #         method : "post"
        #         payload :
        #             client_id : @clientId
        #             client_secret : @clientSecret
        #             scope : @scopes.join(",")
        #     @prop.setProperty("SLACK_credencial#{@option.name}", res.getContentText())
        #     return JSON.parse(res.getContentText()).access_token
    
        saveAccessToken : (code)=>
            res = @uox => UrlFetchApp.fetch "#{@API_ENDPOINT}oauth.access" ,
                method : "post"
                payload :
                    client_id : @clientId
                    client_secret : @clientSecret
                    redirect_uri : @prop.getProperty("SLACK_redirectURI#{@option.name}")
                    code : code
            @prop.setProperty("SLACK_credencial#{@option.name}", res.getContentText())
            return JSON.parse(res.getContentText()).access_token
    
        getAuthorizeUrl : (callback,optArg) =>
            redirectUri = @getCallbackURL(callback, optArg)
            @prop.setProperty("SLACK_redirectURI#{@option.name}", redirectUri)
            "#{@AUTH_ENDPOINT}?client_id=#{@clientId}&scope=#{@scopes.join(',')}&response_type=code&redirect_uri=#{redirectUri}"
    
    
        getCallbackURL : (callback,optArg = {}) ->
            url = ScriptApp.getService().getUrl()
            if url.indexOf("/exec") >= 0
                url = url.slice(0, -4) + 'usercallback?state='
            else
                url = url.slice(0, -3) + 'usercallback?state='
            builder = ScriptApp.newStateToken()
            .withMethod(callback)
            builder.withTimeout(optArg.timeout) if optArg.timeout
            builder.withArgument("param", JSON.stringify(optArg)) if optArg
    
            stateToken = builder.createToken()
            "#{url}#{stateToken}"
        uox : (f, retry=3)=>
          count = 0
          while true
            try
              return f()
            catch e
              if count > retry
                throw e
              Utilities.sleep 1000
              count++

    exports.SlackApp = SlackApp
