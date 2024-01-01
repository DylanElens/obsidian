#here we call call the solve python script
#for each of the .in files we will pass those to the stdin of the python script
#and then we will compare the output to the .ans files with the same name
#
# I also want print pass or fail for each test
# when the script concludes I want to print the total number of tests passed
# and the total number of tests failed

passed = 0
failed = 0
for file in *.in
do
    echo "Testing $file"
    python3 solve.py < $file > $file.out
    diff $file.out ${file%.*}.ans
    if [ $? -eq 0 ]
    then
        passed=$((passed + 1))
        echo "Pass"
    else
        failed=$((failed + 1))
        echo "Fail"
    fi
    rm $file.out
done

echo "Passed: $passed"
echo "Failed: $failed"
echo "Total: $((passed + failed))"
echo "Percent passed: $((passed / (passed + failed)))"



