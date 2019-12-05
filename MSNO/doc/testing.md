# Multi-Site Network Service Orchestrator Testing
This report contains the result of the MSNO testing for MS8, according to [D3.6](https://www.5g-eve.eu/wp-content/uploads/2019/11/5g-eve-d3.6-interworking-test-suites.pdf)

| Test Name | Test Description | Config |Test Case | Result | Comments |
| --------- | ---------------- | ------ |--------- | ------ | -------- |
| Test 1 - Network Service ID creation | The purpose of this test is to validate the creation of a NS ID. | MSNO BASIC CONF | T1.1 Positive test | Partial passed | Test passed with the MS8 scope. Exception: Notification is not sent as is not supported yet |
| Test 1 - Network Service ID creation | The purpose of this test is to validate the creation of a NS ID. | MSNO BASIC CONF | T1.2 Wrong headers | Passed |  |
| Test 1 - Network Service ID creation | The purpose of this test is to validate the creation of a NS ID. | MSNO BASIC CONF | T1.3 Incorrect CreateNsRequest | Passed |  |

## Evidences

```
=== RUN   TestNetworkServiceIDCreation
2019/12/03 13:17:48 Received 201 response for http://localhost:8000/nslcm/v1/ns_instances POST request
2019/12/03 13:17:48 Received 200 response for http://localhost:8000/nslcm/v1/ns_instances/ab635eb4-2e36-4565-bbc4-cd6997bd2348 GET request
--- PASS: TestNetworkServiceIDCreation (0.03s)
    test1_test.go:11: Test 1 - Network Service ID creation. Positive test
    test1_test.go:42: Location header:  http://localhost:8000/nslcm/v1/ns_instances/ab635eb4-2e36-4565-bbc4-cd6997bd2348
=== RUN   TestNetworkServiceIDCreationWrongHeaders
2019/12/03 13:17:48 Received 400 response for http://localhost:8000/nslcm/v1/ns_instances POST request
2019/12/03 13:17:48 Received 400 response for http://localhost:8000/nslcm/v1/ns_instances POST request
2019/12/03 13:17:48 Received 400 response for http://localhost:8000/nslcm/v1/ns_instances POST request
--- PASS: TestNetworkServiceIDCreationWrongHeaders (0.01s)
    test1_test.go:57: Test 1 - Network Service ID creation. Wrong headers
    test1_test.go:70: Missing Content-Type
    test1_test.go:81: Missing Accept
    test1_test.go:92: Missing Version
=== RUN   TestNetworkServiceIDCreationWrongRequest
2019/12/03 13:17:48 Received 400 response for http://localhost:8000/nslcm/v1/ns_instances POST request
2019/12/03 13:17:48 Received 400 response for http://localhost:8000/nslcm/v1/ns_instances POST request
2019/12/03 13:17:48 Received 400 response for http://localhost:8000/nslcm/v1/ns_instances POST request
--- PASS: TestNetworkServiceIDCreationWrongRequest (0.02s)
    test1_test.go:101: Test 1 - Network Service ID creation. Wrong CreateNsRequest
    test1_test.go:114: Missing Description
    test1_test.go:124: Missing NS Name
    test1_test.go:134: Missing NS ID
PASS
```