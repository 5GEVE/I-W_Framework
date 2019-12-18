# Multi-Site Network Service Orchestrator Testing
This report contains the result of the MSNO testing for MS8, according to [D3.6](https://www.5g-eve.eu/wp-content/uploads/2019/11/5g-eve-d3.6-interworking-test-suites.pdf)

| Test Name | Test Description | Config |Test Case | Result | Comments |
| --------- | ---------------- | ------ |--------- | ------ | -------- |
| Test 1 - Network Service ID creation | The purpose of this test is to validate the creation of a NS ID. | MSNO BASIC CONF | T1.1 Positive test | Partially passed | Test passed with the MS8 scope. Exception: Notification is not sent as is not supported yet |
| Test 1 - Network Service ID creation | The purpose of this test is to validate the creation of a NS ID. | MSNO BASIC CONF | T1.2 Wrong headers | Passed |  |
| Test 1 - Network Service ID creation | The purpose of this test is to validate the creation of a NS ID. | MSNO BASIC CONF | T1.3 Incorrect CreateNsRequest | Passed |  |
| Test 2 - Network Service instantiation| The purpose of this test is to validate the instantiation of a NS. | MSNO BASIC CONF | T2.1 Positive test | Partially passed| Test passed with the MS8 scope. Exception: Notification is not sent as is not supported yet |
| Test 2 - Network Service instantiation| The purpose of this test is to validate the instantiation of a NS. | MSNO BASIC CONF | T2.2 NS has not been onboarded | Passed| |
| Test 2 - Network Service instantiation| The purpose of this test is to validate the instantiation of a NS. | MSNO BASIC CONF | T2.3 NS has been instantiated previously | Passed| |
| Test 3 - Network Service LCM| The purpose of this test is to validate the management of the NS Lifecycle. | MSNO BASIC CONF | T3.1 Positive test | Partially passed| Test passed with the MS8 scope. Exception: Only Termination is supported |

## Evidences

```
=== RUN   TestNetworkServiceIDCreation
2019/12/18 09:47:05 Received 201 response for http://localhost:8000/nslcm/v1/ns_instances POST request
2019/12/18 09:47:05 Received 200 response for http://localhost:8000/nslcm/v1/ns_instances/1bf3e0a1-2563-43f2-9f6f-e6649163f3ea GET request
--- PASS: TestNetworkServiceIDCreation (0.03s)
    test1_test.go:11: Test 1 - Network Service ID creation. Positive test
    test1_test.go:42: Location header:  http://localhost:8000/nslcm/v1/ns_instances/1bf3e0a1-2563-43f2-9f6f-e6649163f3ea
=== RUN   TestNetworkServiceIDCreationWrongHeaders
2019/12/18 09:47:05 Received 400 response for http://localhost:8000/nslcm/v1/ns_instances POST request
2019/12/18 09:47:05 Received 400 response for http://localhost:8000/nslcm/v1/ns_instances POST request
2019/12/18 09:47:05 Received 400 response for http://localhost:8000/nslcm/v1/ns_instances POST request
--- PASS: TestNetworkServiceIDCreationWrongHeaders (0.01s)
    test1_test.go:57: Test 1 - Network Service ID creation. Wrong headers
    test1_test.go:70: Missing Content-Type
    test1_test.go:81: Missing Accept
    test1_test.go:92: Missing Version
=== RUN   TestNetworkServiceIDCreationWrongRequest
2019/12/18 09:47:05 Received 400 response for http://localhost:8000/nslcm/v1/ns_instances POST request
2019/12/18 09:47:05 Received 400 response for http://localhost:8000/nslcm/v1/ns_instances POST request
2019/12/18 09:47:05 Received 400 response for http://localhost:8000/nslcm/v1/ns_instances POST request
--- PASS: TestNetworkServiceIDCreationWrongRequest (0.01s)
    test1_test.go:101: Test 1 - Network Service ID creation. Wrong CreateNsRequest
    test1_test.go:114: Missing Description
    test1_test.go:124: Missing NS Name
    test1_test.go:134: Missing NS ID
=== RUN   TestNetworkServiceInstantiation
2019/12/18 09:47:05 Received 201 response for http://localhost:8000/nslcm/v1/ns_instances POST request
2019/12/18 09:47:05 Received 202 response for http://localhost:8000/nslcm/v1/ns_instances/1550dfd4-544e-40af-80bb-b06aecccf9f3/instantiate POST request
2019/12/18 09:47:05 Received 200 response for http://localhost:8000/nslcm/v1/ns_instances/1550dfd4-544e-40af-80bb-b06aecccf9f3 GET request
--- PASS: TestNetworkServiceInstantiation (0.07s)
    test2_test.go:11: Test 2.1 - Network Service instantiation. Positive test
    test2_test.go:42: Location header:  http://localhost:8000/nslcm/v1/ns_instances/1550dfd4-544e-40af-80bb-b06aecccf9f3
    test2_test.go:44: Instantiating NS
    test2_test.go:69: Location header:  http://localhost:8011/nfvo/SP_OSM/ns_instances/fake-uuid/instantiate
=== RUN   TestNetworkServiceInstantiationDoNotExist
2019/12/18 09:47:05 Received 404 response for http://localhost:8000/nslcm/v1/ns_instances/do_not_exist/instantiate POST request
--- PASS: TestNetworkServiceInstantiationDoNotExist (0.01s)
    test2_test.go:82: Test 2.2 - NS does not exists
    test2_test.go:104: NS Instantiation for non existing NS
=== RUN   TestNetworkServiceInstantiationConflict
2019/12/18 09:47:05 Received 201 response for http://localhost:8000/nslcm/v1/ns_instances POST request
2019/12/18 09:47:05 Received 202 response for http://localhost:8000/nslcm/v1/ns_instances/2e49ff64-523a-4b9a-916d-57053060c57c/instantiate POST request
2019/12/18 09:47:05 Received 409 response for http://localhost:8000/nslcm/v1/ns_instances/2e49ff64-523a-4b9a-916d-57053060c57c/instantiate POST request
--- PASS: TestNetworkServiceInstantiationConflict (0.06s)
    test2_test.go:112: Test 2.3 - NS instantiated twice
    test2_test.go:130: Instantiating  2e49ff64-523a-4b9a-916d-57053060c57c
=== RUN   TestNetworkServiceTerminate
2019/12/18 09:47:05 Received 201 response for http://localhost:8000/nslcm/v1/ns_instances POST request
2019/12/18 09:47:05 Received 202 response for http://localhost:8000/nslcm/v1/ns_instances/42badde1-e00c-4775-8c17-7efd28ba0550/instantiate POST request
2019/12/18 09:47:05 Received 202 response for http://localhost:8000/nslcm/v1/ns_instances/42badde1-e00c-4775-8c17-7efd28ba0550/terminate POST request
--- PASS: TestNetworkServiceTerminate (0.05s)
    test3_test.go:11: Test 3.1 - Terminate NS
    test3_test.go:44: Location header:  http://localhost:8011/nfvo/SP_OSM/ns_instances/fake-uuid/terminate
PASS
```