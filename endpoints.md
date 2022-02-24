# Endpoints

## Subscriptions
- POST /api/v1/customers/subscriptions
- GET /api/v1/customers/subscriptions/:customer_id
- PATCH  /api/v1/customers/subscriptions/:subscription_id


##### `POST /api/v1/customers/subscriptions`
##### Required Body Content:
- `customer_id={integer}`
- `title={string}`

#### `POST /api/v1/customers/subscriptions`
 ```json
 {
     "data": {
         "id": "9",
         "type": "subscriptions",
         "attributes": {
             "title": "Blacktea",
             "price": 5.0,
             "status": "active",
             "frequency": "weekly"
         }
     }
 }
 ```

##### `GET /api/v1/customers/subscriptions`
##### Required Query Parameters:
- `customer_id={integer}`

```json
{
    "data": [
        {
            "id": "1",
            "type": "subscriptions",
            "attributes": {
                "title": "Green tea",
                "price": 12.0,
                "status": "cancelled",
                "frequency": "weekly"
            }
        },
        {
            "id": "2",
            "type": "subscriptions",
            "attributes": {
                "title": "Blacktea",
                "price": 8.0,
                "status": "cancelled",
                "frequency": "weekly"
            }
        }
    ]
}
```

##### `PATCH /api/v1/customers/subscriptions/subscription_id`
##### Required Body Content:
- `subscription_id={integer}`
- `customer_id={integer}`

```json
{
    "data": {
        "id": "2",
        "type": "subscriptions",
        "attributes": {
            "title": "Premium Blacktea",
            "price": 8.0,
            "status": "cancelled",
            "frequency": "weekly"
        }
    }
}
```
