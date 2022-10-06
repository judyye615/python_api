import pytest
import requests

@pytest.mark.smoke
def test_get_method():
    resp = requests.get("https://reqres.in/api/users?page=2")

    assert resp.status_code == 200

    print("This GET Method status code is: " + str(resp.status_code))


def test_post_method():
    resp = requests.post("https://reqres.in/api/users",
                         json={"name": "morpheus",
                               "job": "leader"
                               }
                         )
    assert resp.status_code == 201
    print("This POST Method status code is: " + str(resp.status_code))

