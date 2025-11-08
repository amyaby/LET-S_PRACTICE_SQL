create table Tweets(
    tweet_id int primary key,
    content varchar
);
insert into Tweets (tweet_id,content)
values
    (1,Let us Code),
    (2,More than fifteen chars are here!);

select tweet_id
from Tweets
where char_length(content) > 15