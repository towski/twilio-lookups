# twilio-lookups

Check if an SMS is valid

Stolen code from twilio-ruby broken out in a separate gem. Because I need lookups but can't update my twilio-ruby

Yes the namespacing is terrible. 

```
client = TwilioLookups::REST::LookupsClient.new sid, key
number = client.phone_numbers.get('+14159341234')
number.national_format
```
