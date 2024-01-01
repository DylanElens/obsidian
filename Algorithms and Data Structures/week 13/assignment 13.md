# 1
- Slot 0: \[\]
- Slot 1: \[20\]
- Slot 2: \[\]
- Slot 3: \[\]
- Slot 4: \[16, 5\]
- Slot 5: \[44, 88, 11\]
- Slot 6: \[94, 39\]
- Slot 7: \[12, 23\]
- Slot 8: \[\]
- Slot 9: \[13\]
- Slot 10: \[\]


# 2
### a
This is the hash table:
\[77, 13, None, None, 40, 88, 45, 23, None, 20, 29, 12, 8\]

This is the number of unsucessful probes for each key:
\[0, 0, 0, 0, 0, 0, 0, 0, 2, 2\] for at total of 4 unsuccessful probes
### b
the hash table looks like:
\[23, 13, 77, None, 40, 88, 45, None, None, 20, 29, 12, 8\]

This is the number of unsucessful probes for each key:
\[0, 0, 0, 0, 0, 0, 0, 0, 2, 3\] for a totoal number of 5 unsuccesful probes

# 3
$h_1$ will evenly distribute all keys while $h_2$ will not. This is because in $h_2$  the keys 0-9 will go to slot 0, keys 10-19 will go to slot 1, keys 20-29 will go to slot 2, and slots 3 to 9 will remain empty. As you can see the keys are not evenly distributed.

# 4
in $php$:

```php
function isDuplicate($list): bool
	$uniqueHash = [];
	foreach ($list as $item){
	    $hash = md5($item);
	    if (isset($list[$hash])) {
	        return true;
	    }else{
			$list[$hash] = $item
	    }
	}
	return false
}

```

complexity is O(n) since all we are doing is copying over all $n$ items into an associative array. If a key is set then that means that we found a duplicate otherwise it is not. This means that it is correct


# 5

```php
function top4words($intput_string): bool
	$list = [];
	$words = explode(" ", $pizza);
	//insert into hashtable
	foreach ($words as $word){
	    if (isset($list[$word])) {
			$list[$word] += 1;
	    }else{
			$list[$word] = 1;
	    }
	}
	$topWords = array_fill(0, 4, ['', 0]);
	foreach ($list as $word => $count) {
		 for ($i = 0; $i < 4; ++$i) {
			if ($count > $topWords[$i][1]) {
				//shift
				array_splice($topWords, $i, 0, [[$word, $count]]); 
				array_pop($topWords);
				break; 
				} 
			} 
		} 

	return array_map(function($item) { return $item[0]; }, $topWords);

}
```

The complexity is bassicly 0(N) since w are looping through the array only 3 times. The nested loop is bassicly the same as doing 4 if statements I I would not consider this $n^2$  but more in the realm of $4n + 3n$ .