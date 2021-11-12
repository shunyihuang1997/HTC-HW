
#check if dir exist, if not then get it
if [ ! -d "./shakespeare" ]
then
	wget http://pages.stat.wisc.edu/~jgillett/605/CHTC/wordCounting/shakespeare.tar;
tar -xvf shakespeare.tar;
fi

#cat all files into one
cat shakespeare/histories/* > all
cat shakespeare/tragedies/* > all
cat shakespeare/comedies/* > all
cat shakespeare/poetry/* > all

allLength=$(wc -l < all)

#check if the total length can be mod by 5
if (( $allLength % 5 != 0))
then
	diff=$((allLength % 5))
	diff=$((5 - diff))
	allLength=$((allLength + diff))
fi

#get number of line we need to separate
numSeparation=5
linePerFile=$((allLength / numSeparation))

split -l $linePerFile all

#one word per line
#sed -e 's/' '/\t/g'
#tr ' ' '\n' < xad

#One word per line
tr ' ' '\n' < xaa > xaaNew
tr ' ' '\n' < xab > xabNew
tr ' ' '\n' < xac > xacNew
tr ' ' '\n' < xad > xadNew
tr ' ' '\n' < xae > xaeNew



#sort merge
sort xaaNew > xaa
sort xabNew > xab 
sort xacNew > xac 
sort xadNew > xad 
sort xaeNew > xae 







