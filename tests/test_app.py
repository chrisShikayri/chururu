from app import app

def test_home():
    client = app.test_client()
    res = client.get("/")
    assert res.status_code == 200
    assert b"Hola Mundo" in res.data
