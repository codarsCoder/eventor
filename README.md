[Eventor.postman_collection.json](https://github.com/codarsCoder/eventor/files/15284383/Eventor.postman_collection.json)## EVENTOR

### Proje Özellikleri

- **Laravel 10.1**
- **Mysql DB**

### Proje Gereksinimleri

- **Php version min. 8.0**
- **Composer version min. 2.2 (Aksi halde projedeki vendor klasörü kullanılabilir)**
- **Projede kullanılan passport auth paketi için php yapılandırmasında sodium paketi aktif edilmiş olmalı**

### Proje Kurulumu

- **Veritabanını oluşturun**
- **.env dosyasına oluşturduğunuz veritabanı bilgilerini ekleyin**
- **.env dosyasına email bilgilerini eleyin**
- **Aşağıdaki yönergeleri proje dizininde console ile sıra ile çalıştırın**
- **composer install**
- **php artisan key:generate**
- **php artisan migrate**
- **php artisan db:seed**
- **Bir saat öncesi zamanı gelen eventlerin katılımcılarına hatırlatma maili gitmesi için hostingte cronjob oluşturun**
- **cronjob için cd /path/to && php artisan schedule:run >> /dev/null 2>&1   her saat çalışacak şekilde ekleyin**

#### Artık projeniz kullanıma hazır , giriş için mail:admin@admin.com, password:12345678

### Proje Kullanımı

#### Eventor projesinde kullanıcılar etkinlik oluşturablir, başka etkinliklere katılabilir yada etkinlikten çıkabilirler.

[Uploading Eventor.{
	"info": {
		"_postman_id": "24675a05-e080-41fe-8be8-7bc4db99ee59",
		"name": "Eventor",
		"description": "# 📄 Get started here\n\nThis template contains a boilerplate for documentation that you can quickly customize and reuse.\n\n## 🔖 How to use this template\n\n- Replace the content given brackets (()) with your API's details.\n- Tips are formatted in `codespan` - feel free to read and remove them.\n    \n\n---\n\n`Start with a brief overview of what your API offers.`\n\nThe ((product name)) provides many API products, tools, and resources that enable you to ((add product value here)).\n\n`You can also list the APIs you offer, link to the relevant pages, or do both in this section.`\n\n## **Getting started guide**\n\n`List the steps or points required to start using your APIs. Make sure to cover everything required to reach success with your API as quickly as possible.`\n\nTo start using the ((add APIs here)), you need to -\n\n`The points given below are from The Postman API's documentation. You can reference it to write your own getting started guide.`\n\n- You must use a valid API Key to send requests to the API endpoints. You can get your API key from Postman's [integrations dashboard](https://go.postman.co/settings/me/api-keys).\n- The API has [rate and usage limits](https://learning.postman.com/docs/developer/postman-api/postman-api-rate-limits/).\n- The API only responds to HTTPS-secured communications. Any requests sent via HTTP return an HTTP 301 redirect to the corresponding HTTPS resources.\n- The API returns request responses in JSON format. When an API request returns an error, it is sent in the JSON response as an error key.\n    \n\n## Authentication\n\n`Add details on the authorization keys/tokens required, steps that cover how to get them, and the relevant error codes.`\n\nThe ((product name)) API uses ((add your API's authorization type)) for authentication.\n\n`The details given below are from the Postman API's documentation. You can reference it to write your own authentication section.`\n\nPostman uses API keys for authentication. You can generate a Postman API key in the [API keys](https://postman.postman.co/settings/me/api-keys) section of your Postman account settings.\n\nYou must include an API key in each request to the Postman API with the X-Api-Key request header.\n\n### Authentication error response\n\nIf an API key is missing, malformed, or invalid, you will receive an HTTP 401 Unauthorized response code.\n\n## Rate and usage limits\n\n`Use this section to cover your APIs' terms of use. Include API limits, constraints, and relevant error codes, so consumers understand the permitted API usage and practices.`\n\n`The example given below is from The Postman API's documentation. Use it as a reference to write your APIs' terms of use.`\n\nAPI access rate limits apply at a per-API key basis in unit time. The limit is 300 requests per minute. Also, depending on your plan, you may have usage limits. If you exceed either limit, your request will return an HTTP 429 Too Many Requests status code.\n\nEach API response returns the following set of headers to help you identify your use status:\n\n| Header | Description |\n| --- | --- |\n| `X-RateLimit-Limit` | The maximum number of requests that the consumer is permitted to make per minute. |\n| `X-RateLimit-Remaining` | The number of requests remaining in the current rate limit window. |\n| `X-RateLimit-Reset` | The time at which the current rate limit window resets in UTC epoch seconds. |\n\n### 503 response\n\nAn HTTP `503` response from our servers indicates there is an unexpected spike in API access traffic. The server is usually operational within the next five minutes. If the outage persists or you receive any other form of an HTTP `5XX` error, [contact support](https://support.postman.com/hc/en-us/requests/new/).\n\n### **Need some help?**\n\n`Add links that customers can refer to whenever they need help.`\n\nIn case you have questions, go through our tutorials ((link to your video or help documentation here)). Or visit our FAQ page ((link to the relevant page)).\n\nOr you can check out our community forum, there’s a good chance our community has an answer for you. Visit our developer forum ((link to developer forum)) to review topics, ask questions, and learn from others.\n\n`You can also document or add links to libraries, code examples, and other resources needed to make a request.`",
		"schema": "https://schema.getpostman.com/json/collection/v2.0.0/collection.json",
		"_exporter_id": "34561334"
	},
	"item": [
		{
			"name": "User",
			"item": [
				{
					"name": "Login",
					"event": [
						{
							"listen": "test",
							"script": {
								"exec": [
									""
								],
								"type": "text/javascript",
								"packages": {}
							}
						}
					],
					"request": {
						"method": "POST",
						"header": [],
						"body": {
							"mode": "raw",
							"raw": "{\n    \"email\":\"admin@admin.com\",\n    \"password\":\"123\"\n}",
							"options": {
								"raw": {
									"language": "json"
								}
							}
						},
						"url": "http://localhost:8000/api/login",
						"description": "Gets information about the authenticated user."
					},
					"response": [
						{
							"name": "Successful Response",
							"originalRequest": {
								"method": "GET",
								"header": [],
								"url": "https://api.getpostman.com/me"
							},
							"status": "OK",
							"code": 200,
							"_postman_previewlanguage": "json",
							"header": [
								{
									"key": "Content-Type",
									"value": "application/json",
									"name": "Content-Type",
									"description": {
										"content": "",
										"type": "text/plain"
									}
								}
							],
							"cookie": [],
							"body": "{\n    \"user\": {\n        \"id\": 12345678,\n        \"username\": \"taylor-lee\",\n        \"email\": \"taylor.lee@example.com\",\n        \"fullName\": \"Taylor Lee\",\n        \"avatar\": \"https://example.com/user/r5u9qpvmujfjf6lbqmga.jpg\",\n        \"isPublic\": true\n    },\n    \"operations\": [\n        {\n            \"name\": \"mock_usage\",\n            \"limit\": 1000000,\n            \"usage\": 110276,\n            \"overage\": 0\n        },\n        {\n            \"name\": \"monitor_request_runs\",\n            \"limit\": 10000000,\n            \"usage\": 1141750,\n            \"overage\": 0\n        },\n        {\n            \"name\": \"api_usage\",\n            \"limit\": 1000000,\n            \"usage\": 16240,\n            \"overage\": 0\n        },\n        {\n            \"name\": \"custom_domains\",\n            \"limit\": 25,\n            \"usage\": 25,\n            \"overage\": 0\n        },\n        {\n            \"name\": \"serverless_requests\",\n            \"limit\": 10000,\n            \"usage\": 0,\n            \"overage\": 0\n        },\n        {\n            \"name\": \"integrations\",\n            \"limit\": 5000,\n            \"usage\": 1018,\n            \"overage\": 0\n        },\n        {\n            \"name\": \"cloud_agent_requests\",\n            \"limit\": 1000000,\n            \"usage\": 1615,\n            \"overage\": 0\n        }\n    ]\n}"
						},
						{
							"name": "Rate Limit Exceeded",
							"originalRequest": {
								"method": "GET",
								"header": [],
								"url": "https://api.getpostman.com/me"
							},
							"status": "Too Many Requests",
							"code": 429,
							"_postman_previewlanguage": "json",
							"header": [
								{
									"key": "Content-Type",
									"value": "application/json",
									"description": {
										"content": "",
										"type": "text/plain"
									}
								}
							],
							"cookie": [],
							"body": "{\n    \"error\": \"rateLimited\",\n    \"message\": \"Rate limit exceeded. Please retry after 1669048687\"\n}"
						}
					]
				},
				{
					"name": "Register",
					"event": [
						{
							"listen": "test",
							"script": {
								"exec": [
									""
								],
								"type": "text/javascript",
								"packages": {}
							}
						}
					],
					"request": {
						"method": "POST",
						"header": [],
						"body": {
							"mode": "raw",
							"raw": "{\n    \"name\":\"Admin\",\n    \"email\":\"admin@admin.com\",\n    \"password\":\"12345678\"\n}",
							"options": {
								"raw": {
									"language": "json"
								}
							}
						},
						"url": "http://localhost:8000/api/register",
						"description": "Gets information about the authenticated user."
					},
					"response": [
						{
							"name": "Successful Response",
							"originalRequest": {
								"method": "GET",
								"header": [],
								"url": "https://api.getpostman.com/me"
							},
							"status": "OK",
							"code": 200,
							"_postman_previewlanguage": "json",
							"header": [
								{
									"key": "Content-Type",
									"value": "application/json",
									"name": "Content-Type",
									"description": {
										"content": "",
										"type": "text/plain"
									}
								}
							],
							"cookie": [],
							"body": "{\n    \"user\": {\n        \"id\": 12345678,\n        \"username\": \"taylor-lee\",\n        \"email\": \"taylor.lee@example.com\",\n        \"fullName\": \"Taylor Lee\",\n        \"avatar\": \"https://example.com/user/r5u9qpvmujfjf6lbqmga.jpg\",\n        \"isPublic\": true\n    },\n    \"operations\": [\n        {\n            \"name\": \"mock_usage\",\n            \"limit\": 1000000,\n            \"usage\": 110276,\n            \"overage\": 0\n        },\n        {\n            \"name\": \"monitor_request_runs\",\n            \"limit\": 10000000,\n            \"usage\": 1141750,\n            \"overage\": 0\n        },\n        {\n            \"name\": \"api_usage\",\n            \"limit\": 1000000,\n            \"usage\": 16240,\n            \"overage\": 0\n        },\n        {\n            \"name\": \"custom_domains\",\n            \"limit\": 25,\n            \"usage\": 25,\n            \"overage\": 0\n        },\n        {\n            \"name\": \"serverless_requests\",\n            \"limit\": 10000,\n            \"usage\": 0,\n            \"overage\": 0\n        },\n        {\n            \"name\": \"integrations\",\n            \"limit\": 5000,\n            \"usage\": 1018,\n            \"overage\": 0\n        },\n        {\n            \"name\": \"cloud_agent_requests\",\n            \"limit\": 1000000,\n            \"usage\": 1615,\n            \"overage\": 0\n        }\n    ]\n}"
						},
						{
							"name": "Rate Limit Exceeded",
							"originalRequest": {
								"method": "GET",
								"header": [],
								"url": "https://api.getpostman.com/me"
							},
							"status": "Too Many Requests",
							"code": 429,
							"_postman_previewlanguage": "json",
							"header": [
								{
									"key": "Content-Type",
									"value": "application/json",
									"description": {
										"content": "",
										"type": "text/plain"
									}
								}
							],
							"cookie": [],
							"body": "{\n    \"error\": \"rateLimited\",\n    \"message\": \"Rate limit exceeded. Please retry after 1669048687\"\n}"
						}
					]
				}
			],
			"description": "The `/me` endpoints let you manage information about the authenticated user."
		},
		{
			"name": "Events",
			"item": [
				{
					"name": "Create Event",
					"event": [
						{
							"listen": "test",
							"script": {
								"exec": [
									""
								],
								"type": "text/javascript",
								"packages": {}
							}
						}
					],
					"request": {
						"method": "POST",
						"header": [
							{
								"key": "Content-Type",
								"value": "application/json"
							},
							{
								"key": "Authorization",
								"value": "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiNzZkNWI5MzRiZDhiNzNhZDU3ZDIwNDlkMmU0ZDUxZDE1M2U2MjliYjRlMzMzMTBlNDliOGE5YTcyNGQ1MTEzNDU1NjE4ZDI2NTA5NTM2YmYiLCJpYXQiOjE3MTUzNzMzODQuNTcwMTMzLCJuYmYiOjE3MTUzNzMzODQuNTcwMTMzLCJleHAiOjE3NDY5MDkzODQuNTY4Mzk0LCJzdWIiOiI0MiIsInNjb3BlcyI6W119.gPjjZhp19aRf1uJk4RZ2F3VieWibWVRPWaP9IeU42pCo6iiXBfv0ts6giI-NaAiVLqfCQpiEdMk7cpFFS7Pam01fITrZoxOY17pzwQ2Scl1vd1WqdNEro5VP3givkrX89Lqj2XaSCawpbLmF2Y1ZFI-evxpH_oyc1rOOxpN02Bm8UmMdGaVFcLwc7xTO5AcDTIICXP2htE7G1HYjz9T0d5ArLbd9zUOyTTMPl3NmW4yk-hN1-cLRuTT585fFQoDLmjh6U5GVzaCZhYNie7k5LL4dXZYiBnKLLEA-rMIAI6Bcqc69mB2INcG79nrv0JPrZ-fxqKXaQYpnJ40FtJd4s9VOoVJeGmNKHy-PC3tOiWTb_DJ7ATr5NKqutpX6s8egI609y8DDxIqD0v5uZDFroCY76-B-vsbvvSpFiJ0ytqiVgzbHWzJ7QRY02LstKmGXE4fEtgT2WbNJp_VaS_cn_916zPBASYhU0U3dCMSup-4UWk3Zyd6e_yrE8iNcxLqrYidTjVOtLeuYaIqW1x1l_ZJP-gndH9kOzEL-QB2lCFbNKiaCJ7-3zWeQ0B6FYeuGQx0aapm6mFnjg139rZJTww3x34l8PSR_b0cYWQDrCUAOIHEBybZKWpGwmSRt5i4MasGHdPALlhXuBuwNqstTqYOeOIM86geyNP0xhNvNMw4"
							}
						],
						"body": {
							"mode": "raw",
							"raw": "{\n \"name\" :\"My First Event\",\n \"description\" : \"My first event description22\",\n \"date\" :\"2024-12-21\",\n\"time\" :\"20:00\"\n}"
						},
						"url": {
							"raw": "http://localhost:8000/api/create-event",
							"protocol": "http",
							"host": [
								"localhost"
							],
							"port": "8000",
							"path": [
								"api",
								"create-event"
							],
							"query": [
								{
									"key": "workspace",
									"value": "{{workspaceId}}",
									"description": "Optional. A workspace ID in which to create the collection.\n\nIf you do not include this query parameter, the system creates the collection in your \"My Workspace\" workspace.",
									"disabled": true
								}
							]
						},
						"description": "Creates a collection using the [Postman Collection v2 schema format](https://schema.postman.com/json/collection/v2.1.0/docs/index.html). Include a `collection` object in the request body that contains the following required properties:\n\n*   `info` — An **object** that contains the following properties:\n    *   `name` — A **string** value that contains the collection's name.\n    *   `schema` — A **string** that contains a URL to the collection's schema. For example, the `https://schema.getpostman.com/collection/v1` URL.\n*   `item` — An **object** that contains the HTTP request and response information.\n    *   `request` — An **object** that contains the collection's request information. For a complete list of values, refer to the `definitions.request` entry in the [collection.json schema file](https://schema.postman.com/json/collection/v2.1.0/collection.json). If you pass an empty object for this value, the system defaults to an untitled GET request.\n\n**Note:**\n\n*   For a complete list of available property values for this endpoint, use the following references available in the [collection.json schema file](https://schema.postman.com/json/collection/v2.1.0/collection.json):\n    *   `info` object — Use the `definitions.info` entry.\n    *   `item` object — Use the `definitions.items` entry.\n*   For all other possible values, refer to the [collection.json schema file](https://schema.postman.com/json/collection/v2.1.0/collection.json)."
					},
					"response": [
						{
							"name": "Successful Response",
							"originalRequest": {
								"method": "POST",
								"header": [
									{
										"key": "Content-Type",
										"value": "application/json"
									}
								],
								"body": {
									"mode": "raw",
									"raw": "{\n    \"collection\": {\n        \"info\": {\n            \"name\": \"Test Collection\",\n            \"description\": \"This collection makes a request to the Postman Echo service to get a list of request headers sent by an HTTP client.\",\n            \"schema\": \"https://schema.getpostman.com/json/collection/v2.1.0/collection.json\"\n        },\n        \"item\": [\n            {\n                \"name\": \"Test GET Response\",\n                \"event\": [\n                    {\n                        \"listen\": \"test\",\n                        \"script\": {\n                            \"id\": \"7d2334fc-a84a-4c3d-b26c-7529afa4c0ae\",\n                            \"exec\": [\n                                \"pm.test(\\\"Status code is 200\\\", function () {\",\n                                \"    pm.response.to.have.status(200);\",\n                                \"});\"\n                                ],\n                            \"type\": \"text/javascript\"\n                            }\n                        }\n                    ],\n                \"request\": {\n                    \"url\": \"https://echo.getpostman.com/headers\",\n                    \"method\": \"GET\",\n                    \"header\": [\n                        {\n                            \"key\": \"Content-Type\",\n                            \"value\": \"application/json\"\n                        }\n                    ]\n                }\n            }\n        ]\n    }\n}",
									"options": {
										"raw": {
											"language": "json"
										}
									}
								},
								"url": {
									"raw": "https://api.getpostman.com/collections",
									"protocol": "https",
									"host": [
										"api",
										"getpostman",
										"com"
									],
									"path": [
										"collections"
									],
									"query": [
										{
											"key": "workspace",
											"value": "1f0df51a-8658-4ee8-a2a1-d2567dfa09a9",
											"description": "Optional. A workspace ID in which to create the collection.\n\nIf you do not include this query parameter, the system creates the collection in your \"My Workspace\" workspace.",
											"disabled": true
										}
									]
								}
							},
							"status": "OK",
							"code": 200,
							"_postman_previewlanguage": "json",
							"header": [
								{
									"key": "Content-Type",
									"value": "application/json",
									"name": "Content-Type",
									"description": {
										"content": "",
										"type": "text/plain"
									}
								}
							],
							"cookie": [],
							"body": "{\n    \"collection\": {\n        \"id\": \"12ece9e1-2abf-4edc-8e34-de66e74114d2\",\n        \"name\": \"Test Collection\",\n        \"uid\": \"12345678-12ece9e1-2abf-4edc-8e34-de66e74114d2\"\n    }\n}"
						},
						{
							"name": "Bad Request",
							"originalRequest": {
								"method": "POST",
								"header": [
									{
										"key": "Content-Type",
										"value": "application/json"
									}
								],
								"body": {
									"mode": "raw",
									"raw": "{\n    \"collection\": {\n        \"info\": {\n            \"name\": \"Test Collection\",\n            \"description\": \"This collection makes a request to the Postman Echo service to get a list of request headers sent by an HTTP client.\",\n            \"schema\": \"https://schema.getpostman.com/json/collection/v2.1.0/collection.json\"\n        },\n        \"item\": [\n            {\n                \"name\": \"Test GET Response\",\n                \"event\": [\n                    {\n                        \"listen\": \"test\",\n                        \"script\": {\n                            \"id\": \"7d2334fc-a84a-4c3d-b26c-7529afa4c0ae\",\n                            \"exec\": [\n                                \"pm.test(\\\"Status code is 200\\\", function () {\",\n                                \"    pm.response.to.have.status(200);\",\n                                \"});\"\n                                ],\n                            \"type\": \"text/javascript\"\n                            }\n                        }\n                    ],\n                \"request\": {\n                    \"url\": \"https://echo.getpostman.com/headers\",\n                    \"method\": \"GET\",\n                    \"header\": [\n                        {\n                            \"key\": \"Content-Type\",\n                            \"value\": \"application/json\"\n                        }\n                    ]\n                }\n            }\n        ]\n    }\n}",
									"options": {
										"raw": {
											"language": "json"
										}
									}
								},
								"url": {
									"raw": "https://api.getpostman.com/collections",
									"protocol": "https",
									"host": [
										"api",
										"getpostman",
										"com"
									],
									"path": [
										"collections"
									],
									"query": [
										{
											"key": "workspace",
											"value": "1f0df51a-8658-4ee8-a2a1-d2567dfa09a9",
											"description": "Optional. A workspace ID in which to create the collection.\n\nIf you do not include this query parameter, the system creates the collection in your \"My Workspace\" workspace.",
											"disabled": true
										}
									]
								}
							},
							"status": "Bad Request",
							"code": 400,
							"_postman_previewlanguage": "json",
							"header": [
								{
									"key": "Content-Type",
									"value": "application/json",
									"name": "Content-Type",
									"description": {
										"content": "",
										"type": "text/plain"
									}
								}
							],
							"cookie": [],
							"body": "{\n    \"error\": {\n        \"name\": \"instanceFoundError\",\n        \"message\": \"The specified item already exists.\",\n        \"details\": {\n            \"item\": \"collection\",\n            \"id\": \"12ece9e1-2abf-4edc-8e34-de66e74114d2\"\n        }\n    }\n}"
						},
						{
							"name": "Malformed Request",
							"originalRequest": {
								"method": "POST",
								"header": [
									{
										"key": "Content-Type",
										"value": "application/json",
										"name": "Content-Type",
										"type": "text"
									}
								],
								"body": {
									"mode": "raw",
									"raw": "{\n    \"collection\": {\n        \"item\": [\n            {\n                \"name\": \"Test GET Response\",\n                \"event\": [\n                    {\n                        \"listen\": \"test\",\n                        \"script\": {\n                            \"id\": \"7d2334fc-a84a-4c3d-b26c-7529afa4c0ae\",\n                            \"exec\": [\n                                \"pm.test(\\\"Status code is 200\\\", function () {\",\n                                \"    pm.response.to.have.status(200);\",\n                                \"});\"\n                                ],\n                            \"type\": \"text/javascript\"\n                            }\n                        }\n                    ],\n                \"request\": {\n                    \"url\": \"https://echo.getpostman.com/headers\",\n                    \"method\": \"GET\",\n                    \"header\": [\n                        {\n                            \"key\": \"Content-Type\",\n                            \"value\": \"application/json\"\n                        }\n                    ]\n                }\n            }\n        ]\n    }\n}",
									"options": {
										"raw": {
											"language": "json"
										}
									}
								},
								"url": {
									"raw": "https://api.getpostman.com/collections",
									"protocol": "https",
									"host": [
										"api",
										"getpostman",
										"com"
									],
									"path": [
										"collections"
									],
									"query": [
										{
											"key": "workspace",
											"value": "1f0df51a-8658-4ee8-a2a1-d2567dfa09a9",
											"description": "Optional. A workspace ID in which to create the collection.\n\nIf you do not include this query parameter, the system creates the collection in your \"My Workspace\" workspace.",
											"disabled": true
										}
									]
								}
							},
							"status": "Bad Request",
							"code": 400,
							"_postman_previewlanguage": "json",
							"header": [
								{
									"key": "Content-Type",
									"value": "application/json; charset=utf-8"
								}
							],
							"cookie": [],
							"body": "{\n    \"error\": {\n        \"name\": \"malformedRequestError\",\n        \"message\": \"Found 1 errors with the supplied collection.\",\n        \"details\": [\n            \": must have required property 'info'\"\n        ]\n    }\n}"
						},
						{
							"name": "Rate Limit Exceeded",
							"originalRequest": {
								"method": "POST",
								"header": [
									{
										"key": "Content-Type",
										"value": "application/json"
									}
								],
								"body": {
									"mode": "raw",
									"raw": "{\n    \"collection\": {\n        \"item\": [\n            {\n                \"name\": \"Test GET Response\",\n                \"event\": [\n                    {\n                        \"listen\": \"test\",\n                        \"script\": {\n                            \"id\": \"7d2334fc-a84a-4c3d-b26c-7529afa4c0ae\",\n                            \"exec\": [\n                                \"pm.test(\\\"Status code is 200\\\", function () {\",\n                                \"    pm.response.to.have.status(200);\",\n                                \"});\"\n                                ],\n                            \"type\": \"text/javascript\"\n                            }\n                        }\n                    ],\n                \"request\": {\n                    \"url\": \"https://echo.getpostman.com/headers\",\n                    \"method\": \"GET\",\n                    \"header\": [\n                        {\n                            \"key\": \"Content-Type\",\n                            \"value\": \"application/json\"\n                        }\n                    ]\n                }\n            }\n        ]\n    }\n}",
									"options": {
										"raw": {
											"language": "json"
										}
									}
								},
								"url": {
									"raw": "https://api.getpostman.com/collections",
									"protocol": "https",
									"host": [
										"api",
										"getpostman",
										"com"
									],
									"path": [
										"collections"
									],
									"query": [
										{
											"key": "workspace",
											"value": "1f0df51a-8658-4ee8-a2a1-d2567dfa09a9",
											"description": "Optional. A workspace ID in which to create the collection.\n\nIf you do not include this query parameter, the system creates the collection in your \"My Workspace\" workspace.",
											"disabled": true
										}
									]
								}
							},
							"status": "Too Many Requests",
							"code": 429,
							"_postman_previewlanguage": "json",
							"header": [
								{
									"key": "Content-Type",
									"value": "application/json",
									"description": ""
								}
							],
							"cookie": [],
							"body": "{\n    \"error\": \"rateLimited\",\n    \"message\": \"Rate limit exceeded. Please retry after 1669048687\"\n}"
						}
					]
				},
				{
					"name": "Update Event",
					"event": [
						{
							"listen": "test",
							"script": {
								"exec": [
									""
								],
								"type": "text/javascript",
								"packages": {}
							}
						}
					],
					"request": {
						"method": "PUT",
						"header": [
							{
								"key": "Content-Type",
								"value": "application/json"
							},
							{
								"key": "Authorization",
								"value": "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiNzZkNWI5MzRiZDhiNzNhZDU3ZDIwNDlkMmU0ZDUxZDE1M2U2MjliYjRlMzMzMTBlNDliOGE5YTcyNGQ1MTEzNDU1NjE4ZDI2NTA5NTM2YmYiLCJpYXQiOjE3MTUzNzMzODQuNTcwMTMzLCJuYmYiOjE3MTUzNzMzODQuNTcwMTMzLCJleHAiOjE3NDY5MDkzODQuNTY4Mzk0LCJzdWIiOiI0MiIsInNjb3BlcyI6W119.gPjjZhp19aRf1uJk4RZ2F3VieWibWVRPWaP9IeU42pCo6iiXBfv0ts6giI-NaAiVLqfCQpiEdMk7cpFFS7Pam01fITrZoxOY17pzwQ2Scl1vd1WqdNEro5VP3givkrX89Lqj2XaSCawpbLmF2Y1ZFI-evxpH_oyc1rOOxpN02Bm8UmMdGaVFcLwc7xTO5AcDTIICXP2htE7G1HYjz9T0d5ArLbd9zUOyTTMPl3NmW4yk-hN1-cLRuTT585fFQoDLmjh6U5GVzaCZhYNie7k5LL4dXZYiBnKLLEA-rMIAI6Bcqc69mB2INcG79nrv0JPrZ-fxqKXaQYpnJ40FtJd4s9VOoVJeGmNKHy-PC3tOiWTb_DJ7ATr5NKqutpX6s8egI609y8DDxIqD0v5uZDFroCY76-B-vsbvvSpFiJ0ytqiVgzbHWzJ7QRY02LstKmGXE4fEtgT2WbNJp_VaS_cn_916zPBASYhU0U3dCMSup-4UWk3Zyd6e_yrE8iNcxLqrYidTjVOtLeuYaIqW1x1l_ZJP-gndH9kOzEL-QB2lCFbNKiaCJ7-3zWeQ0B6FYeuGQx0aapm6mFnjg139rZJTww3x34l8PSR_b0cYWQDrCUAOIHEBybZKWpGwmSRt5i4MasGHdPALlhXuBuwNqstTqYOeOIM86geyNP0xhNvNMw4"
							}
						],
						"body": {
							"mode": "raw",
							"raw": "{\n \"id\":\"13\",\n \"name\" :\"My First Eventsss\",\n \"description\" : \"My first event description 567\",\n \"date\" :\"2024-12-20\",\n \"time\" :\"21:00\"\n}"
						},
						"url": {
							"raw": "http://localhost:8000/api/update-event",
							"protocol": "http",
							"host": [
								"localhost"
							],
							"port": "8000",
							"path": [
								"api",
								"update-event"
							],
							"query": [
								{
									"key": "workspace",
									"value": "{{workspaceId}}",
									"description": "Optional. A workspace ID in which to create the collection.\n\nIf you do not include this query parameter, the system creates the collection in your \"My Workspace\" workspace.",
									"disabled": true
								}
							]
						},
						"description": "Creates a collection using the [Postman Collection v2 schema format](https://schema.postman.com/json/collection/v2.1.0/docs/index.html). Include a `collection` object in the request body that contains the following required properties:\n\n*   `info` — An **object** that contains the following properties:\n    *   `name` — A **string** value that contains the collection's name.\n    *   `schema` — A **string** that contains a URL to the collection's schema. For example, the `https://schema.getpostman.com/collection/v1` URL.\n*   `item` — An **object** that contains the HTTP request and response information.\n    *   `request` — An **object** that contains the collection's request information. For a complete list of values, refer to the `definitions.request` entry in the [collection.json schema file](https://schema.postman.com/json/collection/v2.1.0/collection.json). If you pass an empty object for this value, the system defaults to an untitled GET request.\n\n**Note:**\n\n*   For a complete list of available property values for this endpoint, use the following references available in the [collection.json schema file](https://schema.postman.com/json/collection/v2.1.0/collection.json):\n    *   `info` object — Use the `definitions.info` entry.\n    *   `item` object — Use the `definitions.items` entry.\n*   For all other possible values, refer to the [collection.json schema file](https://schema.postman.com/json/collection/v2.1.0/collection.json)."
					},
					"response": [
						{
							"name": "Successful Response",
							"originalRequest": {
								"method": "POST",
								"header": [
									{
										"key": "Content-Type",
										"value": "application/json"
									}
								],
								"body": {
									"mode": "raw",
									"raw": "{\n    \"collection\": {\n        \"info\": {\n            \"name\": \"Test Collection\",\n            \"description\": \"This collection makes a request to the Postman Echo service to get a list of request headers sent by an HTTP client.\",\n            \"schema\": \"https://schema.getpostman.com/json/collection/v2.1.0/collection.json\"\n        },\n        \"item\": [\n            {\n                \"name\": \"Test GET Response\",\n                \"event\": [\n                    {\n                        \"listen\": \"test\",\n                        \"script\": {\n                            \"id\": \"7d2334fc-a84a-4c3d-b26c-7529afa4c0ae\",\n                            \"exec\": [\n                                \"pm.test(\\\"Status code is 200\\\", function () {\",\n                                \"    pm.response.to.have.status(200);\",\n                                \"});\"\n                                ],\n                            \"type\": \"text/javascript\"\n                            }\n                        }\n                    ],\n                \"request\": {\n                    \"url\": \"https://echo.getpostman.com/headers\",\n                    \"method\": \"GET\",\n                    \"header\": [\n                        {\n                            \"key\": \"Content-Type\",\n                            \"value\": \"application/json\"\n                        }\n                    ]\n                }\n            }\n        ]\n    }\n}",
									"options": {
										"raw": {
											"language": "json"
										}
									}
								},
								"url": {
									"raw": "https://api.getpostman.com/collections",
									"protocol": "https",
									"host": [
										"api",
										"getpostman",
										"com"
									],
									"path": [
										"collections"
									],
									"query": [
										{
											"key": "workspace",
											"value": "1f0df51a-8658-4ee8-a2a1-d2567dfa09a9",
											"description": "Optional. A workspace ID in which to create the collection.\n\nIf you do not include this query parameter, the system creates the collection in your \"My Workspace\" workspace.",
											"disabled": true
										}
									]
								}
							},
							"status": "OK",
							"code": 200,
							"_postman_previewlanguage": "json",
							"header": [
								{
									"key": "Content-Type",
									"value": "application/json",
									"name": "Content-Type",
									"description": {
										"content": "",
										"type": "text/plain"
									}
								}
							],
							"cookie": [],
							"body": "{\n    \"collection\": {\n        \"id\": \"12ece9e1-2abf-4edc-8e34-de66e74114d2\",\n        \"name\": \"Test Collection\",\n        \"uid\": \"12345678-12ece9e1-2abf-4edc-8e34-de66e74114d2\"\n    }\n}"
						},
						{
							"name": "Bad Request",
							"originalRequest": {
								"method": "POST",
								"header": [
									{
										"key": "Content-Type",
										"value": "application/json"
									}
								],
								"body": {
									"mode": "raw",
									"raw": "{\n    \"collection\": {\n        \"info\": {\n            \"name\": \"Test Collection\",\n            \"description\": \"This collection makes a request to the Postman Echo service to get a list of request headers sent by an HTTP client.\",\n            \"schema\": \"https://schema.getpostman.com/json/collection/v2.1.0/collection.json\"\n        },\n        \"item\": [\n            {\n                \"name\": \"Test GET Response\",\n                \"event\": [\n                    {\n                        \"listen\": \"test\",\n                        \"script\": {\n                            \"id\": \"7d2334fc-a84a-4c3d-b26c-7529afa4c0ae\",\n                            \"exec\": [\n                                \"pm.test(\\\"Status code is 200\\\", function () {\",\n                                \"    pm.response.to.have.status(200);\",\n                                \"});\"\n                                ],\n                            \"type\": \"text/javascript\"\n                            }\n                        }\n                    ],\n                \"request\": {\n                    \"url\": \"https://echo.getpostman.com/headers\",\n                    \"method\": \"GET\",\n                    \"header\": [\n                        {\n                            \"key\": \"Content-Type\",\n                            \"value\": \"application/json\"\n                        }\n                    ]\n                }\n            }\n        ]\n    }\n}",
									"options": {
										"raw": {
											"language": "json"
										}
									}
								},
								"url": {
									"raw": "https://api.getpostman.com/collections",
									"protocol": "https",
									"host": [
										"api",
										"getpostman",
										"com"
									],
									"path": [
										"collections"
									],
									"query": [
										{
											"key": "workspace",
											"value": "1f0df51a-8658-4ee8-a2a1-d2567dfa09a9",
											"description": "Optional. A workspace ID in which to create the collection.\n\nIf you do not include this query parameter, the system creates the collection in your \"My Workspace\" workspace.",
											"disabled": true
										}
									]
								}
							},
							"status": "Bad Request",
							"code": 400,
							"_postman_previewlanguage": "json",
							"header": [
								{
									"key": "Content-Type",
									"value": "application/json",
									"name": "Content-Type",
									"description": {
										"content": "",
										"type": "text/plain"
									}
								}
							],
							"cookie": [],
							"body": "{\n    \"error\": {\n        \"name\": \"instanceFoundError\",\n        \"message\": \"The specified item already exists.\",\n        \"details\": {\n            \"item\": \"collection\",\n            \"id\": \"12ece9e1-2abf-4edc-8e34-de66e74114d2\"\n        }\n    }\n}"
						},
						{
							"name": "Malformed Request",
							"originalRequest": {
								"method": "POST",
								"header": [
									{
										"key": "Content-Type",
										"value": "application/json",
										"name": "Content-Type",
										"type": "text"
									}
								],
								"body": {
									"mode": "raw",
									"raw": "{\n    \"collection\": {\n        \"item\": [\n            {\n                \"name\": \"Test GET Response\",\n                \"event\": [\n                    {\n                        \"listen\": \"test\",\n                        \"script\": {\n                            \"id\": \"7d2334fc-a84a-4c3d-b26c-7529afa4c0ae\",\n                            \"exec\": [\n                                \"pm.test(\\\"Status code is 200\\\", function () {\",\n                                \"    pm.response.to.have.status(200);\",\n                                \"});\"\n                                ],\n                            \"type\": \"text/javascript\"\n                            }\n                        }\n                    ],\n                \"request\": {\n                    \"url\": \"https://echo.getpostman.com/headers\",\n                    \"method\": \"GET\",\n                    \"header\": [\n                        {\n                            \"key\": \"Content-Type\",\n                            \"value\": \"application/json\"\n                        }\n                    ]\n                }\n            }\n        ]\n    }\n}",
									"options": {
										"raw": {
											"language": "json"
										}
									}
								},
								"url": {
									"raw": "https://api.getpostman.com/collections",
									"protocol": "https",
									"host": [
										"api",
										"getpostman",
										"com"
									],
									"path": [
										"collections"
									],
									"query": [
										{
											"key": "workspace",
											"value": "1f0df51a-8658-4ee8-a2a1-d2567dfa09a9",
											"description": "Optional. A workspace ID in which to create the collection.\n\nIf you do not include this query parameter, the system creates the collection in your \"My Workspace\" workspace.",
											"disabled": true
										}
									]
								}
							},
							"status": "Bad Request",
							"code": 400,
							"_postman_previewlanguage": "json",
							"header": [
								{
									"key": "Content-Type",
									"value": "application/json; charset=utf-8"
								}
							],
							"cookie": [],
							"body": "{\n    \"error\": {\n        \"name\": \"malformedRequestError\",\n        \"message\": \"Found 1 errors with the supplied collection.\",\n        \"details\": [\n            \": must have required property 'info'\"\n        ]\n    }\n}"
						},
						{
							"name": "Rate Limit Exceeded",
							"originalRequest": {
								"method": "POST",
								"header": [
									{
										"key": "Content-Type",
										"value": "application/json"
									}
								],
								"body": {
									"mode": "raw",
									"raw": "{\n    \"collection\": {\n        \"item\": [\n            {\n                \"name\": \"Test GET Response\",\n                \"event\": [\n                    {\n                        \"listen\": \"test\",\n                        \"script\": {\n                            \"id\": \"7d2334fc-a84a-4c3d-b26c-7529afa4c0ae\",\n                            \"exec\": [\n                                \"pm.test(\\\"Status code is 200\\\", function () {\",\n                                \"    pm.response.to.have.status(200);\",\n                                \"});\"\n                                ],\n                            \"type\": \"text/javascript\"\n                            }\n                        }\n                    ],\n                \"request\": {\n                    \"url\": \"https://echo.getpostman.com/headers\",\n                    \"method\": \"GET\",\n                    \"header\": [\n                        {\n                            \"key\": \"Content-Type\",\n                            \"value\": \"application/json\"\n                        }\n                    ]\n                }\n            }\n        ]\n    }\n}",
									"options": {
										"raw": {
											"language": "json"
										}
									}
								},
								"url": {
									"raw": "https://api.getpostman.com/collections",
									"protocol": "https",
									"host": [
										"api",
										"getpostman",
										"com"
									],
									"path": [
										"collections"
									],
									"query": [
										{
											"key": "workspace",
											"value": "1f0df51a-8658-4ee8-a2a1-d2567dfa09a9",
											"description": "Optional. A workspace ID in which to create the collection.\n\nIf you do not include this query parameter, the system creates the collection in your \"My Workspace\" workspace.",
											"disabled": true
										}
									]
								}
							},
							"status": "Too Many Requests",
							"code": 429,
							"_postman_previewlanguage": "json",
							"header": [
								{
									"key": "Content-Type",
									"value": "application/json",
									"description": ""
								}
							],
							"cookie": [],
							"body": "{\n    \"error\": \"rateLimited\",\n    \"message\": \"Rate limit exceeded. Please retry after 1669048687\"\n}"
						}
					]
				},
				{
					"name": "Delete Event",
					"event": [
						{
							"listen": "test",
							"script": {
								"exec": [
									""
								],
								"type": "text/javascript",
								"packages": {}
							}
						}
					],
					"request": {
						"method": "DELETE",
						"header": [
							{
								"key": "Content-Type",
								"value": "application/json"
							},
							{
								"key": "Authorization",
								"value": "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiNzZkNWI5MzRiZDhiNzNhZDU3ZDIwNDlkMmU0ZDUxZDE1M2U2MjliYjRlMzMzMTBlNDliOGE5YTcyNGQ1MTEzNDU1NjE4ZDI2NTA5NTM2YmYiLCJpYXQiOjE3MTUzNzMzODQuNTcwMTMzLCJuYmYiOjE3MTUzNzMzODQuNTcwMTMzLCJleHAiOjE3NDY5MDkzODQuNTY4Mzk0LCJzdWIiOiI0MiIsInNjb3BlcyI6W119.gPjjZhp19aRf1uJk4RZ2F3VieWibWVRPWaP9IeU42pCo6iiXBfv0ts6giI-NaAiVLqfCQpiEdMk7cpFFS7Pam01fITrZoxOY17pzwQ2Scl1vd1WqdNEro5VP3givkrX89Lqj2XaSCawpbLmF2Y1ZFI-evxpH_oyc1rOOxpN02Bm8UmMdGaVFcLwc7xTO5AcDTIICXP2htE7G1HYjz9T0d5ArLbd9zUOyTTMPl3NmW4yk-hN1-cLRuTT585fFQoDLmjh6U5GVzaCZhYNie7k5LL4dXZYiBnKLLEA-rMIAI6Bcqc69mB2INcG79nrv0JPrZ-fxqKXaQYpnJ40FtJd4s9VOoVJeGmNKHy-PC3tOiWTb_DJ7ATr5NKqutpX6s8egI609y8DDxIqD0v5uZDFroCY76-B-vsbvvSpFiJ0ytqiVgzbHWzJ7QRY02LstKmGXE4fEtgT2WbNJp_VaS_cn_916zPBASYhU0U3dCMSup-4UWk3Zyd6e_yrE8iNcxLqrYidTjVOtLeuYaIqW1x1l_ZJP-gndH9kOzEL-QB2lCFbNKiaCJ7-3zWeQ0B6FYeuGQx0aapm6mFnjg139rZJTww3x34l8PSR_b0cYWQDrCUAOIHEBybZKWpGwmSRt5i4MasGHdPALlhXuBuwNqstTqYOeOIM86geyNP0xhNvNMw4"
							}
						],
						"body": {
							"mode": "raw",
							"raw": "{\n \"id\":\"13\"\n}"
						},
						"url": {
							"raw": "http://localhost:8000/api/delete-event",
							"protocol": "http",
							"host": [
								"localhost"
							],
							"port": "8000",
							"path": [
								"api",
								"delete-event"
							],
							"query": [
								{
									"key": "workspace",
									"value": "{{workspaceId}}",
									"description": "Optional. A workspace ID in which to create the collection.\n\nIf you do not include this query parameter, the system creates the collection in your \"My Workspace\" workspace.",
									"disabled": true
								}
							]
						},
						"description": "Creates a collection using the [Postman Collection v2 schema format](https://schema.postman.com/json/collection/v2.1.0/docs/index.html). Include a `collection` object in the request body that contains the following required properties:\n\n*   `info` — An **object** that contains the following properties:\n    *   `name` — A **string** value that contains the collection's name.\n    *   `schema` — A **string** that contains a URL to the collection's schema. For example, the `https://schema.getpostman.com/collection/v1` URL.\n*   `item` — An **object** that contains the HTTP request and response information.\n    *   `request` — An **object** that contains the collection's request information. For a complete list of values, refer to the `definitions.request` entry in the [collection.json schema file](https://schema.postman.com/json/collection/v2.1.0/collection.json). If you pass an empty object for this value, the system defaults to an untitled GET request.\n\n**Note:**\n\n*   For a complete list of available property values for this endpoint, use the following references available in the [collection.json schema file](https://schema.postman.com/json/collection/v2.1.0/collection.json):\n    *   `info` object — Use the `definitions.info` entry.\n    *   `item` object — Use the `definitions.items` entry.\n*   For all other possible values, refer to the [collection.json schema file](https://schema.postman.com/json/collection/v2.1.0/collection.json)."
					},
					"response": [
						{
							"name": "Successful Response",
							"originalRequest": {
								"method": "POST",
								"header": [
									{
										"key": "Content-Type",
										"value": "application/json"
									}
								],
								"body": {
									"mode": "raw",
									"raw": "{\n    \"collection\": {\n        \"info\": {\n            \"name\": \"Test Collection\",\n            \"description\": \"This collection makes a request to the Postman Echo service to get a list of request headers sent by an HTTP client.\",\n            \"schema\": \"https://schema.getpostman.com/json/collection/v2.1.0/collection.json\"\n        },\n        \"item\": [\n            {\n                \"name\": \"Test GET Response\",\n                \"event\": [\n                    {\n                        \"listen\": \"test\",\n                        \"script\": {\n                            \"id\": \"7d2334fc-a84a-4c3d-b26c-7529afa4c0ae\",\n                            \"exec\": [\n                                \"pm.test(\\\"Status code is 200\\\", function () {\",\n                                \"    pm.response.to.have.status(200);\",\n                                \"});\"\n                                ],\n                            \"type\": \"text/javascript\"\n                            }\n                        }\n                    ],\n                \"request\": {\n                    \"url\": \"https://echo.getpostman.com/headers\",\n                    \"method\": \"GET\",\n                    \"header\": [\n                        {\n                            \"key\": \"Content-Type\",\n                            \"value\": \"application/json\"\n                        }\n                    ]\n                }\n            }\n        ]\n    }\n}",
									"options": {
										"raw": {
											"language": "json"
										}
									}
								},
								"url": {
									"raw": "https://api.getpostman.com/collections",
									"protocol": "https",
									"host": [
										"api",
										"getpostman",
										"com"
									],
									"path": [
										"collections"
									],
									"query": [
										{
											"key": "workspace",
											"value": "1f0df51a-8658-4ee8-a2a1-d2567dfa09a9",
											"description": "Optional. A workspace ID in which to create the collection.\n\nIf you do not include this query parameter, the system creates the collection in your \"My Workspace\" workspace.",
											"disabled": true
										}
									]
								}
							},
							"status": "OK",
							"code": 200,
							"_postman_previewlanguage": "json",
							"header": [
								{
									"key": "Content-Type",
									"value": "application/json",
									"name": "Content-Type",
									"description": {
										"content": "",
										"type": "text/plain"
									}
								}
							],
							"cookie": [],
							"body": "{\n    \"collection\": {\n        \"id\": \"12ece9e1-2abf-4edc-8e34-de66e74114d2\",\n        \"name\": \"Test Collection\",\n        \"uid\": \"12345678-12ece9e1-2abf-4edc-8e34-de66e74114d2\"\n    }\n}"
						},
						{
							"name": "Bad Request",
							"originalRequest": {
								"method": "POST",
								"header": [
									{
										"key": "Content-Type",
										"value": "application/json"
									}
								],
								"body": {
									"mode": "raw",
									"raw": "{\n    \"collection\": {\n        \"info\": {\n            \"name\": \"Test Collection\",\n            \"description\": \"This collection makes a request to the Postman Echo service to get a list of request headers sent by an HTTP client.\",\n            \"schema\": \"https://schema.getpostman.com/json/collection/v2.1.0/collection.json\"\n        },\n        \"item\": [\n            {\n                \"name\": \"Test GET Response\",\n                \"event\": [\n                    {\n                        \"listen\": \"test\",\n                        \"script\": {\n                            \"id\": \"7d2334fc-a84a-4c3d-b26c-7529afa4c0ae\",\n                            \"exec\": [\n                                \"pm.test(\\\"Status code is 200\\\", function () {\",\n                                \"    pm.response.to.have.status(200);\",\n                                \"});\"\n                                ],\n                            \"type\": \"text/javascript\"\n                            }\n                        }\n                    ],\n                \"request\": {\n                    \"url\": \"https://echo.getpostman.com/headers\",\n                    \"method\": \"GET\",\n                    \"header\": [\n                        {\n                            \"key\": \"Content-Type\",\n                            \"value\": \"application/json\"\n                        }\n                    ]\n                }\n            }\n        ]\n    }\n}",
									"options": {
										"raw": {
											"language": "json"
										}
									}
								},
								"url": {
									"raw": "https://api.getpostman.com/collections",
									"protocol": "https",
									"host": [
										"api",
										"getpostman",
										"com"
									],
									"path": [
										"collections"
									],
									"query": [
										{
											"key": "workspace",
											"value": "1f0df51a-8658-4ee8-a2a1-d2567dfa09a9",
											"description": "Optional. A workspace ID in which to create the collection.\n\nIf you do not include this query parameter, the system creates the collection in your \"My Workspace\" workspace.",
											"disabled": true
										}
									]
								}
							},
							"status": "Bad Request",
							"code": 400,
							"_postman_previewlanguage": "json",
							"header": [
								{
									"key": "Content-Type",
									"value": "application/json",
									"name": "Content-Type",
									"description": {
										"content": "",
										"type": "text/plain"
									}
								}
							],
							"cookie": [],
							"body": "{\n    \"error\": {\n        \"name\": \"instanceFoundError\",\n        \"message\": \"The specified item already exists.\",\n        \"details\": {\n            \"item\": \"collection\",\n            \"id\": \"12ece9e1-2abf-4edc-8e34-de66e74114d2\"\n        }\n    }\n}"
						},
						{
							"name": "Malformed Request",
							"originalRequest": {
								"method": "POST",
								"header": [
									{
										"key": "Content-Type",
										"value": "application/json",
										"name": "Content-Type",
										"type": "text"
									}
								],
								"body": {
									"mode": "raw",
									"raw": "{\n    \"collection\": {\n        \"item\": [\n            {\n                \"name\": \"Test GET Response\",\n                \"event\": [\n                    {\n                        \"listen\": \"test\",\n                        \"script\": {\n                            \"id\": \"7d2334fc-a84a-4c3d-b26c-7529afa4c0ae\",\n                            \"exec\": [\n                                \"pm.test(\\\"Status code is 200\\\", function () {\",\n                                \"    pm.response.to.have.status(200);\",\n                                \"});\"\n                                ],\n                            \"type\": \"text/javascript\"\n                            }\n                        }\n                    ],\n                \"request\": {\n                    \"url\": \"https://echo.getpostman.com/headers\",\n                    \"method\": \"GET\",\n                    \"header\": [\n                        {\n                            \"key\": \"Content-Type\",\n                            \"value\": \"application/json\"\n                        }\n                    ]\n                }\n            }\n        ]\n    }\n}",
									"options": {
										"raw": {
											"language": "json"
										}
									}
								},
								"url": {
									"raw": "https://api.getpostman.com/collections",
									"protocol": "https",
									"host": [
										"api",
										"getpostman",
										"com"
									],
									"path": [
										"collections"
									],
									"query": [
										{
											"key": "workspace",
											"value": "1f0df51a-8658-4ee8-a2a1-d2567dfa09a9",
											"description": "Optional. A workspace ID in which to create the collection.\n\nIf you do not include this query parameter, the system creates the collection in your \"My Workspace\" workspace.",
											"disabled": true
										}
									]
								}
							},
							"status": "Bad Request",
							"code": 400,
							"_postman_previewlanguage": "json",
							"header": [
								{
									"key": "Content-Type",
									"value": "application/json; charset=utf-8"
								}
							],
							"cookie": [],
							"body": "{\n    \"error\": {\n        \"name\": \"malformedRequestError\",\n        \"message\": \"Found 1 errors with the supplied collection.\",\n        \"details\": [\n            \": must have required property 'info'\"\n        ]\n    }\n}"
						},
						{
							"name": "Rate Limit Exceeded",
							"originalRequest": {
								"method": "POST",
								"header": [
									{
										"key": "Content-Type",
										"value": "application/json"
									}
								],
								"body": {
									"mode": "raw",
									"raw": "{\n    \"collection\": {\n        \"item\": [\n            {\n                \"name\": \"Test GET Response\",\n                \"event\": [\n                    {\n                        \"listen\": \"test\",\n                        \"script\": {\n                            \"id\": \"7d2334fc-a84a-4c3d-b26c-7529afa4c0ae\",\n                            \"exec\": [\n                                \"pm.test(\\\"Status code is 200\\\", function () {\",\n                                \"    pm.response.to.have.status(200);\",\n                                \"});\"\n                                ],\n                            \"type\": \"text/javascript\"\n                            }\n                        }\n                    ],\n                \"request\": {\n                    \"url\": \"https://echo.getpostman.com/headers\",\n                    \"method\": \"GET\",\n                    \"header\": [\n                        {\n                            \"key\": \"Content-Type\",\n                            \"value\": \"application/json\"\n                        }\n                    ]\n                }\n            }\n        ]\n    }\n}",
									"options": {
										"raw": {
											"language": "json"
										}
									}
								},
								"url": {
									"raw": "https://api.getpostman.com/collections",
									"protocol": "https",
									"host": [
										"api",
										"getpostman",
										"com"
									],
									"path": [
										"collections"
									],
									"query": [
										{
											"key": "workspace",
											"value": "1f0df51a-8658-4ee8-a2a1-d2567dfa09a9",
											"description": "Optional. A workspace ID in which to create the collection.\n\nIf you do not include this query parameter, the system creates the collection in your \"My Workspace\" workspace.",
											"disabled": true
										}
									]
								}
							},
							"status": "Too Many Requests",
							"code": 429,
							"_postman_previewlanguage": "json",
							"header": [
								{
									"key": "Content-Type",
									"value": "application/json",
									"description": ""
								}
							],
							"cookie": [],
							"body": "{\n    \"error\": \"rateLimited\",\n    \"message\": \"Rate limit exceeded. Please retry after 1669048687\"\n}"
						}
					]
				},
				{
					"name": "Join Event",
					"event": [
						{
							"listen": "test",
							"script": {
								"exec": [
									""
								],
								"type": "text/javascript",
								"packages": {}
							}
						}
					],
					"request": {
						"method": "POST",
						"header": [
							{
								"key": "Content-Type",
								"value": "application/json"
							},
							{
								"key": "Authorization",
								"value": "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiNzZkNWI5MzRiZDhiNzNhZDU3ZDIwNDlkMmU0ZDUxZDE1M2U2MjliYjRlMzMzMTBlNDliOGE5YTcyNGQ1MTEzNDU1NjE4ZDI2NTA5NTM2YmYiLCJpYXQiOjE3MTUzNzMzODQuNTcwMTMzLCJuYmYiOjE3MTUzNzMzODQuNTcwMTMzLCJleHAiOjE3NDY5MDkzODQuNTY4Mzk0LCJzdWIiOiI0MiIsInNjb3BlcyI6W119.gPjjZhp19aRf1uJk4RZ2F3VieWibWVRPWaP9IeU42pCo6iiXBfv0ts6giI-NaAiVLqfCQpiEdMk7cpFFS7Pam01fITrZoxOY17pzwQ2Scl1vd1WqdNEro5VP3givkrX89Lqj2XaSCawpbLmF2Y1ZFI-evxpH_oyc1rOOxpN02Bm8UmMdGaVFcLwc7xTO5AcDTIICXP2htE7G1HYjz9T0d5ArLbd9zUOyTTMPl3NmW4yk-hN1-cLRuTT585fFQoDLmjh6U5GVzaCZhYNie7k5LL4dXZYiBnKLLEA-rMIAI6Bcqc69mB2INcG79nrv0JPrZ-fxqKXaQYpnJ40FtJd4s9VOoVJeGmNKHy-PC3tOiWTb_DJ7ATr5NKqutpX6s8egI609y8DDxIqD0v5uZDFroCY76-B-vsbvvSpFiJ0ytqiVgzbHWzJ7QRY02LstKmGXE4fEtgT2WbNJp_VaS_cn_916zPBASYhU0U3dCMSup-4UWk3Zyd6e_yrE8iNcxLqrYidTjVOtLeuYaIqW1x1l_ZJP-gndH9kOzEL-QB2lCFbNKiaCJ7-3zWeQ0B6FYeuGQx0aapm6mFnjg139rZJTww3x34l8PSR_b0cYWQDrCUAOIHEBybZKWpGwmSRt5i4MasGHdPALlhXuBuwNqstTqYOeOIM86geyNP0xhNvNMw4"
							}
						],
						"body": {
							"mode": "raw",
							"raw": "{\n \"id\":\"7\"\n}"
						},
						"url": {
							"raw": "http://localhost:8000/api/join-event",
							"protocol": "http",
							"host": [
								"localhost"
							],
							"port": "8000",
							"path": [
								"api",
								"join-event"
							],
							"query": [
								{
									"key": "workspace",
									"value": "{{workspaceId}}",
									"description": "Optional. A workspace ID in which to create the collection.\n\nIf you do not include this query parameter, the system creates the collection in your \"My Workspace\" workspace.",
									"disabled": true
								}
							]
						},
						"description": "Creates a collection using the [Postman Collection v2 schema format](https://schema.postman.com/json/collection/v2.1.0/docs/index.html). Include a `collection` object in the request body that contains the following required properties:\n\n*   `info` — An **object** that contains the following properties:\n    *   `name` — A **string** value that contains the collection's name.\n    *   `schema` — A **string** that contains a URL to the collection's schema. For example, the `https://schema.getpostman.com/collection/v1` URL.\n*   `item` — An **object** that contains the HTTP request and response information.\n    *   `request` — An **object** that contains the collection's request information. For a complete list of values, refer to the `definitions.request` entry in the [collection.json schema file](https://schema.postman.com/json/collection/v2.1.0/collection.json). If you pass an empty object for this value, the system defaults to an untitled GET request.\n\n**Note:**\n\n*   For a complete list of available property values for this endpoint, use the following references available in the [collection.json schema file](https://schema.postman.com/json/collection/v2.1.0/collection.json):\n    *   `info` object — Use the `definitions.info` entry.\n    *   `item` object — Use the `definitions.items` entry.\n*   For all other possible values, refer to the [collection.json schema file](https://schema.postman.com/json/collection/v2.1.0/collection.json)."
					},
					"response": [
						{
							"name": "Successful Response",
							"originalRequest": {
								"method": "POST",
								"header": [
									{
										"key": "Content-Type",
										"value": "application/json"
									}
								],
								"body": {
									"mode": "raw",
									"raw": "{\n    \"collection\": {\n        \"info\": {\n            \"name\": \"Test Collection\",\n            \"description\": \"This collection makes a request to the Postman Echo service to get a list of request headers sent by an HTTP client.\",\n            \"schema\": \"https://schema.getpostman.com/json/collection/v2.1.0/collection.json\"\n        },\n        \"item\": [\n            {\n                \"name\": \"Test GET Response\",\n                \"event\": [\n                    {\n                        \"listen\": \"test\",\n                        \"script\": {\n                            \"id\": \"7d2334fc-a84a-4c3d-b26c-7529afa4c0ae\",\n                            \"exec\": [\n                                \"pm.test(\\\"Status code is 200\\\", function () {\",\n                                \"    pm.response.to.have.status(200);\",\n                                \"});\"\n                                ],\n                            \"type\": \"text/javascript\"\n                            }\n                        }\n                    ],\n                \"request\": {\n                    \"url\": \"https://echo.getpostman.com/headers\",\n                    \"method\": \"GET\",\n                    \"header\": [\n                        {\n                            \"key\": \"Content-Type\",\n                            \"value\": \"application/json\"\n                        }\n                    ]\n                }\n            }\n        ]\n    }\n}",
									"options": {
										"raw": {
											"language": "json"
										}
									}
								},
								"url": {
									"raw": "https://api.getpostman.com/collections",
									"protocol": "https",
									"host": [
										"api",
										"getpostman",
										"com"
									],
									"path": [
										"collections"
									],
									"query": [
										{
											"key": "workspace",
											"value": "1f0df51a-8658-4ee8-a2a1-d2567dfa09a9",
											"description": "Optional. A workspace ID in which to create the collection.\n\nIf you do not include this query parameter, the system creates the collection in your \"My Workspace\" workspace.",
											"disabled": true
										}
									]
								}
							},
							"status": "OK",
							"code": 200,
							"_postman_previewlanguage": "json",
							"header": [
								{
									"key": "Content-Type",
									"value": "application/json",
									"name": "Content-Type",
									"description": {
										"content": "",
										"type": "text/plain"
									}
								}
							],
							"cookie": [],
							"body": "{\n    \"collection\": {\n        \"id\": \"12ece9e1-2abf-4edc-8e34-de66e74114d2\",\n        \"name\": \"Test Collection\",\n        \"uid\": \"12345678-12ece9e1-2abf-4edc-8e34-de66e74114d2\"\n    }\n}"
						},
						{
							"name": "Bad Request",
							"originalRequest": {
								"method": "POST",
								"header": [
									{
										"key": "Content-Type",
										"value": "application/json"
									}
								],
								"body": {
									"mode": "raw",
									"raw": "{\n    \"collection\": {\n        \"info\": {\n            \"name\": \"Test Collection\",\n            \"description\": \"This collection makes a request to the Postman Echo service to get a list of request headers sent by an HTTP client.\",\n            \"schema\": \"https://schema.getpostman.com/json/collection/v2.1.0/collection.json\"\n        },\n        \"item\": [\n            {\n                \"name\": \"Test GET Response\",\n                \"event\": [\n                    {\n                        \"listen\": \"test\",\n                        \"script\": {\n                            \"id\": \"7d2334fc-a84a-4c3d-b26c-7529afa4c0ae\",\n                            \"exec\": [\n                                \"pm.test(\\\"Status code is 200\\\", function () {\",\n                                \"    pm.response.to.have.status(200);\",\n                                \"});\"\n                                ],\n                            \"type\": \"text/javascript\"\n                            }\n                        }\n                    ],\n                \"request\": {\n                    \"url\": \"https://echo.getpostman.com/headers\",\n                    \"method\": \"GET\",\n                    \"header\": [\n                        {\n                            \"key\": \"Content-Type\",\n                            \"value\": \"application/json\"\n                        }\n                    ]\n                }\n            }\n        ]\n    }\n}",
									"options": {
										"raw": {
											"language": "json"
										}
									}
								},
								"url": {
									"raw": "https://api.getpostman.com/collections",
									"protocol": "https",
									"host": [
										"api",
										"getpostman",
										"com"
									],
									"path": [
										"collections"
									],
									"query": [
										{
											"key": "workspace",
											"value": "1f0df51a-8658-4ee8-a2a1-d2567dfa09a9",
											"description": "Optional. A workspace ID in which to create the collection.\n\nIf you do not include this query parameter, the system creates the collection in your \"My Workspace\" workspace.",
											"disabled": true
										}
									]
								}
							},
							"status": "Bad Request",
							"code": 400,
							"_postman_previewlanguage": "json",
							"header": [
								{
									"key": "Content-Type",
									"value": "application/json",
									"name": "Content-Type",
									"description": {
										"content": "",
										"type": "text/plain"
									}
								}
							],
							"cookie": [],
							"body": "{\n    \"error\": {\n        \"name\": \"instanceFoundError\",\n        \"message\": \"The specified item already exists.\",\n        \"details\": {\n            \"item\": \"collection\",\n            \"id\": \"12ece9e1-2abf-4edc-8e34-de66e74114d2\"\n        }\n    }\n}"
						},
						{
							"name": "Malformed Request",
							"originalRequest": {
								"method": "POST",
								"header": [
									{
										"key": "Content-Type",
										"value": "application/json",
										"name": "Content-Type",
										"type": "text"
									}
								],
								"body": {
									"mode": "raw",
									"raw": "{\n    \"collection\": {\n        \"item\": [\n            {\n                \"name\": \"Test GET Response\",\n                \"event\": [\n                    {\n                        \"listen\": \"test\",\n                        \"script\": {\n                            \"id\": \"7d2334fc-a84a-4c3d-b26c-7529afa4c0ae\",\n                            \"exec\": [\n                                \"pm.test(\\\"Status code is 200\\\", function () {\",\n                                \"    pm.response.to.have.status(200);\",\n                                \"});\"\n                                ],\n                            \"type\": \"text/javascript\"\n                            }\n                        }\n                    ],\n                \"request\": {\n                    \"url\": \"https://echo.getpostman.com/headers\",\n                    \"method\": \"GET\",\n                    \"header\": [\n                        {\n                            \"key\": \"Content-Type\",\n                            \"value\": \"application/json\"\n                        }\n                    ]\n                }\n            }\n        ]\n    }\n}",
									"options": {
										"raw": {
											"language": "json"
										}
									}
								},
								"url": {
									"raw": "https://api.getpostman.com/collections",
									"protocol": "https",
									"host": [
										"api",
										"getpostman",
										"com"
									],
									"path": [
										"collections"
									],
									"query": [
										{
											"key": "workspace",
											"value": "1f0df51a-8658-4ee8-a2a1-d2567dfa09a9",
											"description": "Optional. A workspace ID in which to create the collection.\n\nIf you do not include this query parameter, the system creates the collection in your \"My Workspace\" workspace.",
											"disabled": true
										}
									]
								}
							},
							"status": "Bad Request",
							"code": 400,
							"_postman_previewlanguage": "json",
							"header": [
								{
									"key": "Content-Type",
									"value": "application/json; charset=utf-8"
								}
							],
							"cookie": [],
							"body": "{\n    \"error\": {\n        \"name\": \"malformedRequestError\",\n        \"message\": \"Found 1 errors with the supplied collection.\",\n        \"details\": [\n            \": must have required property 'info'\"\n        ]\n    }\n}"
						},
						{
							"name": "Rate Limit Exceeded",
							"originalRequest": {
								"method": "POST",
								"header": [
									{
										"key": "Content-Type",
										"value": "application/json"
									}
								],
								"body": {
									"mode": "raw",
									"raw": "{\n    \"collection\": {\n        \"item\": [\n            {\n                \"name\": \"Test GET Response\",\n                \"event\": [\n                    {\n                        \"listen\": \"test\",\n                        \"script\": {\n                            \"id\": \"7d2334fc-a84a-4c3d-b26c-7529afa4c0ae\",\n                            \"exec\": [\n                                \"pm.test(\\\"Status code is 200\\\", function () {\",\n                                \"    pm.response.to.have.status(200);\",\n                                \"});\"\n                                ],\n                            \"type\": \"text/javascript\"\n                            }\n                        }\n                    ],\n                \"request\": {\n                    \"url\": \"https://echo.getpostman.com/headers\",\n                    \"method\": \"GET\",\n                    \"header\": [\n                        {\n                            \"key\": \"Content-Type\",\n                            \"value\": \"application/json\"\n                        }\n                    ]\n                }\n            }\n        ]\n    }\n}",
									"options": {
										"raw": {
											"language": "json"
										}
									}
								},
								"url": {
									"raw": "https://api.getpostman.com/collections",
									"protocol": "https",
									"host": [
										"api",
										"getpostman",
										"com"
									],
									"path": [
										"collections"
									],
									"query": [
										{
											"key": "workspace",
											"value": "1f0df51a-8658-4ee8-a2a1-d2567dfa09a9",
											"description": "Optional. A workspace ID in which to create the collection.\n\nIf you do not include this query parameter, the system creates the collection in your \"My Workspace\" workspace.",
											"disabled": true
										}
									]
								}
							},
							"status": "Too Many Requests",
							"code": 429,
							"_postman_previewlanguage": "json",
							"header": [
								{
									"key": "Content-Type",
									"value": "application/json",
									"description": ""
								}
							],
							"cookie": [],
							"body": "{\n    \"error\": \"rateLimited\",\n    \"message\": \"Rate limit exceeded. Please retry after 1669048687\"\n}"
						}
					]
				},
				{
					"name": "Unjoin Event",
					"event": [
						{
							"listen": "test",
							"script": {
								"exec": [
									""
								],
								"type": "text/javascript",
								"packages": {}
							}
						}
					],
					"request": {
						"method": "POST",
						"header": [
							{
								"key": "Content-Type",
								"value": "application/json"
							},
							{
								"key": "Authorization",
								"value": "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiNzZkNWI5MzRiZDhiNzNhZDU3ZDIwNDlkMmU0ZDUxZDE1M2U2MjliYjRlMzMzMTBlNDliOGE5YTcyNGQ1MTEzNDU1NjE4ZDI2NTA5NTM2YmYiLCJpYXQiOjE3MTUzNzMzODQuNTcwMTMzLCJuYmYiOjE3MTUzNzMzODQuNTcwMTMzLCJleHAiOjE3NDY5MDkzODQuNTY4Mzk0LCJzdWIiOiI0MiIsInNjb3BlcyI6W119.gPjjZhp19aRf1uJk4RZ2F3VieWibWVRPWaP9IeU42pCo6iiXBfv0ts6giI-NaAiVLqfCQpiEdMk7cpFFS7Pam01fITrZoxOY17pzwQ2Scl1vd1WqdNEro5VP3givkrX89Lqj2XaSCawpbLmF2Y1ZFI-evxpH_oyc1rOOxpN02Bm8UmMdGaVFcLwc7xTO5AcDTIICXP2htE7G1HYjz9T0d5ArLbd9zUOyTTMPl3NmW4yk-hN1-cLRuTT585fFQoDLmjh6U5GVzaCZhYNie7k5LL4dXZYiBnKLLEA-rMIAI6Bcqc69mB2INcG79nrv0JPrZ-fxqKXaQYpnJ40FtJd4s9VOoVJeGmNKHy-PC3tOiWTb_DJ7ATr5NKqutpX6s8egI609y8DDxIqD0v5uZDFroCY76-B-vsbvvSpFiJ0ytqiVgzbHWzJ7QRY02LstKmGXE4fEtgT2WbNJp_VaS_cn_916zPBASYhU0U3dCMSup-4UWk3Zyd6e_yrE8iNcxLqrYidTjVOtLeuYaIqW1x1l_ZJP-gndH9kOzEL-QB2lCFbNKiaCJ7-3zWeQ0B6FYeuGQx0aapm6mFnjg139rZJTww3x34l8PSR_b0cYWQDrCUAOIHEBybZKWpGwmSRt5i4MasGHdPALlhXuBuwNqstTqYOeOIM86geyNP0xhNvNMw4"
							}
						],
						"body": {
							"mode": "raw",
							"raw": "{\n \"id\":\"7\"\n}"
						},
						"url": {
							"raw": "http://localhost:8000/api/unjoin-event",
							"protocol": "http",
							"host": [
								"localhost"
							],
							"port": "8000",
							"path": [
								"api",
								"unjoin-event"
							],
							"query": [
								{
									"key": "workspace",
									"value": "{{workspaceId}}",
									"description": "Optional. A workspace ID in which to create the collection.\n\nIf you do not include this query parameter, the system creates the collection in your \"My Workspace\" workspace.",
									"disabled": true
								}
							]
						},
						"description": "Creates a collection using the [Postman Collection v2 schema format](https://schema.postman.com/json/collection/v2.1.0/docs/index.html). Include a `collection` object in the request body that contains the following required properties:\n\n*   `info` — An **object** that contains the following properties:\n    *   `name` — A **string** value that contains the collection's name.\n    *   `schema` — A **string** that contains a URL to the collection's schema. For example, the `https://schema.getpostman.com/collection/v1` URL.\n*   `item` — An **object** that contains the HTTP request and response information.\n    *   `request` — An **object** that contains the collection's request information. For a complete list of values, refer to the `definitions.request` entry in the [collection.json schema file](https://schema.postman.com/json/collection/v2.1.0/collection.json). If you pass an empty object for this value, the system defaults to an untitled GET request.\n\n**Note:**\n\n*   For a complete list of available property values for this endpoint, use the following references available in the [collection.json schema file](https://schema.postman.com/json/collection/v2.1.0/collection.json):\n    *   `info` object — Use the `definitions.info` entry.\n    *   `item` object — Use the `definitions.items` entry.\n*   For all other possible values, refer to the [collection.json schema file](https://schema.postman.com/json/collection/v2.1.0/collection.json)."
					},
					"response": [
						{
							"name": "Successful Response",
							"originalRequest": {
								"method": "POST",
								"header": [
									{
										"key": "Content-Type",
										"value": "application/json"
									}
								],
								"body": {
									"mode": "raw",
									"raw": "{\n    \"collection\": {\n        \"info\": {\n            \"name\": \"Test Collection\",\n            \"description\": \"This collection makes a request to the Postman Echo service to get a list of request headers sent by an HTTP client.\",\n            \"schema\": \"https://schema.getpostman.com/json/collection/v2.1.0/collection.json\"\n        },\n        \"item\": [\n            {\n                \"name\": \"Test GET Response\",\n                \"event\": [\n                    {\n                        \"listen\": \"test\",\n                        \"script\": {\n                            \"id\": \"7d2334fc-a84a-4c3d-b26c-7529afa4c0ae\",\n                            \"exec\": [\n                                \"pm.test(\\\"Status code is 200\\\", function () {\",\n                                \"    pm.response.to.have.status(200);\",\n                                \"});\"\n                                ],\n                            \"type\": \"text/javascript\"\n                            }\n                        }\n                    ],\n                \"request\": {\n                    \"url\": \"https://echo.getpostman.com/headers\",\n                    \"method\": \"GET\",\n                    \"header\": [\n                        {\n                            \"key\": \"Content-Type\",\n                            \"value\": \"application/json\"\n                        }\n                    ]\n                }\n            }\n        ]\n    }\n}",
									"options": {
										"raw": {
											"language": "json"
										}
									}
								},
								"url": {
									"raw": "https://api.getpostman.com/collections",
									"protocol": "https",
									"host": [
										"api",
										"getpostman",
										"com"
									],
									"path": [
										"collections"
									],
									"query": [
										{
											"key": "workspace",
											"value": "1f0df51a-8658-4ee8-a2a1-d2567dfa09a9",
											"description": "Optional. A workspace ID in which to create the collection.\n\nIf you do not include this query parameter, the system creates the collection in your \"My Workspace\" workspace.",
											"disabled": true
										}
									]
								}
							},
							"status": "OK",
							"code": 200,
							"_postman_previewlanguage": "json",
							"header": [
								{
									"key": "Content-Type",
									"value": "application/json",
									"name": "Content-Type",
									"description": {
										"content": "",
										"type": "text/plain"
									}
								}
							],
							"cookie": [],
							"body": "{\n    \"collection\": {\n        \"id\": \"12ece9e1-2abf-4edc-8e34-de66e74114d2\",\n        \"name\": \"Test Collection\",\n        \"uid\": \"12345678-12ece9e1-2abf-4edc-8e34-de66e74114d2\"\n    }\n}"
						},
						{
							"name": "Bad Request",
							"originalRequest": {
								"method": "POST",
								"header": [
									{
										"key": "Content-Type",
										"value": "application/json"
									}
								],
								"body": {
									"mode": "raw",
									"raw": "{\n    \"collection\": {\n        \"info\": {\n            \"name\": \"Test Collection\",\n            \"description\": \"This collection makes a request to the Postman Echo service to get a list of request headers sent by an HTTP client.\",\n            \"schema\": \"https://schema.getpostman.com/json/collection/v2.1.0/collection.json\"\n        },\n        \"item\": [\n            {\n                \"name\": \"Test GET Response\",\n                \"event\": [\n                    {\n                        \"listen\": \"test\",\n                        \"script\": {\n                            \"id\": \"7d2334fc-a84a-4c3d-b26c-7529afa4c0ae\",\n                            \"exec\": [\n                                \"pm.test(\\\"Status code is 200\\\", function () {\",\n                                \"    pm.response.to.have.status(200);\",\n                                \"});\"\n                                ],\n                            \"type\": \"text/javascript\"\n                            }\n                        }\n                    ],\n                \"request\": {\n                    \"url\": \"https://echo.getpostman.com/headers\",\n                    \"method\": \"GET\",\n                    \"header\": [\n                        {\n                            \"key\": \"Content-Type\",\n                            \"value\": \"application/json\"\n                        }\n                    ]\n                }\n            }\n        ]\n    }\n}",
									"options": {
										"raw": {
											"language": "json"
										}
									}
								},
								"url": {
									"raw": "https://api.getpostman.com/collections",
									"protocol": "https",
									"host": [
										"api",
										"getpostman",
										"com"
									],
									"path": [
										"collections"
									],
									"query": [
										{
											"key": "workspace",
											"value": "1f0df51a-8658-4ee8-a2a1-d2567dfa09a9",
											"description": "Optional. A workspace ID in which to create the collection.\n\nIf you do not include this query parameter, the system creates the collection in your \"My Workspace\" workspace.",
											"disabled": true
										}
									]
								}
							},
							"status": "Bad Request",
							"code": 400,
							"_postman_previewlanguage": "json",
							"header": [
								{
									"key": "Content-Type",
									"value": "application/json",
									"name": "Content-Type",
									"description": {
										"content": "",
										"type": "text/plain"
									}
								}
							],
							"cookie": [],
							"body": "{\n    \"error\": {\n        \"name\": \"instanceFoundError\",\n        \"message\": \"The specified item already exists.\",\n        \"details\": {\n            \"item\": \"collection\",\n            \"id\": \"12ece9e1-2abf-4edc-8e34-de66e74114d2\"\n        }\n    }\n}"
						},
						{
							"name": "Malformed Request",
							"originalRequest": {
								"method": "POST",
								"header": [
									{
										"key": "Content-Type",
										"value": "application/json",
										"name": "Content-Type",
										"type": "text"
									}
								],
								"body": {
									"mode": "raw",
									"raw": "{\n    \"collection\": {\n        \"item\": [\n            {\n                \"name\": \"Test GET Response\",\n                \"event\": [\n                    {\n                        \"listen\": \"test\",\n                        \"script\": {\n                            \"id\": \"7d2334fc-a84a-4c3d-b26c-7529afa4c0ae\",\n                            \"exec\": [\n                                \"pm.test(\\\"Status code is 200\\\", function () {\",\n                                \"    pm.response.to.have.status(200);\",\n                                \"});\"\n                                ],\n                            \"type\": \"text/javascript\"\n                            }\n                        }\n                    ],\n                \"request\": {\n                    \"url\": \"https://echo.getpostman.com/headers\",\n                    \"method\": \"GET\",\n                    \"header\": [\n                        {\n                            \"key\": \"Content-Type\",\n                            \"value\": \"application/json\"\n                        }\n                    ]\n                }\n            }\n        ]\n    }\n}",
									"options": {
										"raw": {
											"language": "json"
										}
									}
								},
								"url": {
									"raw": "https://api.getpostman.com/collections",
									"protocol": "https",
									"host": [
										"api",
										"getpostman",
										"com"
									],
									"path": [
										"collections"
									],
									"query": [
										{
											"key": "workspace",
											"value": "1f0df51a-8658-4ee8-a2a1-d2567dfa09a9",
											"description": "Optional. A workspace ID in which to create the collection.\n\nIf you do not include this query parameter, the system creates the collection in your \"My Workspace\" workspace.",
											"disabled": true
										}
									]
								}
							},
							"status": "Bad Request",
							"code": 400,
							"_postman_previewlanguage": "json",
							"header": [
								{
									"key": "Content-Type",
									"value": "application/json; charset=utf-8"
								}
							],
							"cookie": [],
							"body": "{\n    \"error\": {\n        \"name\": \"malformedRequestError\",\n        \"message\": \"Found 1 errors with the supplied collection.\",\n        \"details\": [\n            \": must have required property 'info'\"\n        ]\n    }\n}"
						},
						{
							"name": "Rate Limit Exceeded",
							"originalRequest": {
								"method": "POST",
								"header": [
									{
										"key": "Content-Type",
										"value": "application/json"
									}
								],
								"body": {
									"mode": "raw",
									"raw": "{\n    \"collection\": {\n        \"item\": [\n            {\n                \"name\": \"Test GET Response\",\n                \"event\": [\n                    {\n                        \"listen\": \"test\",\n                        \"script\": {\n                            \"id\": \"7d2334fc-a84a-4c3d-b26c-7529afa4c0ae\",\n                            \"exec\": [\n                                \"pm.test(\\\"Status code is 200\\\", function () {\",\n                                \"    pm.response.to.have.status(200);\",\n                                \"});\"\n                                ],\n                            \"type\": \"text/javascript\"\n                            }\n                        }\n                    ],\n                \"request\": {\n                    \"url\": \"https://echo.getpostman.com/headers\",\n                    \"method\": \"GET\",\n                    \"header\": [\n                        {\n                            \"key\": \"Content-Type\",\n                            \"value\": \"application/json\"\n                        }\n                    ]\n                }\n            }\n        ]\n    }\n}",
									"options": {
										"raw": {
											"language": "json"
										}
									}
								},
								"url": {
									"raw": "https://api.getpostman.com/collections",
									"protocol": "https",
									"host": [
										"api",
										"getpostman",
										"com"
									],
									"path": [
										"collections"
									],
									"query": [
										{
											"key": "workspace",
											"value": "1f0df51a-8658-4ee8-a2a1-d2567dfa09a9",
											"description": "Optional. A workspace ID in which to create the collection.\n\nIf you do not include this query parameter, the system creates the collection in your \"My Workspace\" workspace.",
											"disabled": true
										}
									]
								}
							},
							"status": "Too Many Requests",
							"code": 429,
							"_postman_previewlanguage": "json",
							"header": [
								{
									"key": "Content-Type",
									"value": "application/json",
									"description": ""
								}
							],
							"cookie": [],
							"body": "{\n    \"error\": \"rateLimited\",\n    \"message\": \"Rate limit exceeded. Please retry after 1669048687\"\n}"
						}
					]
				},
				{
					"name": "My Events",
					"event": [
						{
							"listen": "test",
							"script": {
								"exec": [
									""
								],
								"type": "text/javascript",
								"packages": {}
							}
						}
					],
					"protocolProfileBehavior": {
						"disableBodyPruning": true
					},
					"request": {
						"method": "GET",
						"header": [
							{
								"key": "Content-Type",
								"value": "application/json"
							},
							{
								"key": "Authorization",
								"value": "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiNzZkNWI5MzRiZDhiNzNhZDU3ZDIwNDlkMmU0ZDUxZDE1M2U2MjliYjRlMzMzMTBlNDliOGE5YTcyNGQ1MTEzNDU1NjE4ZDI2NTA5NTM2YmYiLCJpYXQiOjE3MTUzNzMzODQuNTcwMTMzLCJuYmYiOjE3MTUzNzMzODQuNTcwMTMzLCJleHAiOjE3NDY5MDkzODQuNTY4Mzk0LCJzdWIiOiI0MiIsInNjb3BlcyI6W119.gPjjZhp19aRf1uJk4RZ2F3VieWibWVRPWaP9IeU42pCo6iiXBfv0ts6giI-NaAiVLqfCQpiEdMk7cpFFS7Pam01fITrZoxOY17pzwQ2Scl1vd1WqdNEro5VP3givkrX89Lqj2XaSCawpbLmF2Y1ZFI-evxpH_oyc1rOOxpN02Bm8UmMdGaVFcLwc7xTO5AcDTIICXP2htE7G1HYjz9T0d5ArLbd9zUOyTTMPl3NmW4yk-hN1-cLRuTT585fFQoDLmjh6U5GVzaCZhYNie7k5LL4dXZYiBnKLLEA-rMIAI6Bcqc69mB2INcG79nrv0JPrZ-fxqKXaQYpnJ40FtJd4s9VOoVJeGmNKHy-PC3tOiWTb_DJ7ATr5NKqutpX6s8egI609y8DDxIqD0v5uZDFroCY76-B-vsbvvSpFiJ0ytqiVgzbHWzJ7QRY02LstKmGXE4fEtgT2WbNJp_VaS_cn_916zPBASYhU0U3dCMSup-4UWk3Zyd6e_yrE8iNcxLqrYidTjVOtLeuYaIqW1x1l_ZJP-gndH9kOzEL-QB2lCFbNKiaCJ7-3zWeQ0B6FYeuGQx0aapm6mFnjg139rZJTww3x34l8PSR_b0cYWQDrCUAOIHEBybZKWpGwmSRt5i4MasGHdPALlhXuBuwNqstTqYOeOIM86geyNP0xhNvNMw4"
							}
						],
						"body": {
							"mode": "raw",
							"raw": "{\n \"id\":\"13\"\n}"
						},
						"url": {
							"raw": "http://localhost:8000/api/my-events",
							"protocol": "http",
							"host": [
								"localhost"
							],
							"port": "8000",
							"path": [
								"api",
								"my-events"
							],
							"query": [
								{
									"key": "workspace",
									"value": "{{workspaceId}}",
									"description": "Optional. A workspace ID in which to create the collection.\n\nIf you do not include this query parameter, the system creates the collection in your \"My Workspace\" workspace.",
									"disabled": true
								}
							]
						},
						"description": "Creates a collection using the [Postman Collection v2 schema format](https://schema.postman.com/json/collection/v2.1.0/docs/index.html). Include a `collection` object in the request body that contains the following required properties:\n\n*   `info` — An **object** that contains the following properties:\n    *   `name` — A **string** value that contains the collection's name.\n    *   `schema` — A **string** that contains a URL to the collection's schema. For example, the `https://schema.getpostman.com/collection/v1` URL.\n*   `item` — An **object** that contains the HTTP request and response information.\n    *   `request` — An **object** that contains the collection's request information. For a complete list of values, refer to the `definitions.request` entry in the [collection.json schema file](https://schema.postman.com/json/collection/v2.1.0/collection.json). If you pass an empty object for this value, the system defaults to an untitled GET request.\n\n**Note:**\n\n*   For a complete list of available property values for this endpoint, use the following references available in the [collection.json schema file](https://schema.postman.com/json/collection/v2.1.0/collection.json):\n    *   `info` object — Use the `definitions.info` entry.\n    *   `item` object — Use the `definitions.items` entry.\n*   For all other possible values, refer to the [collection.json schema file](https://schema.postman.com/json/collection/v2.1.0/collection.json)."
					},
					"response": [
						{
							"name": "Successful Response",
							"originalRequest": {
								"method": "POST",
								"header": [
									{
										"key": "Content-Type",
										"value": "application/json"
									}
								],
								"body": {
									"mode": "raw",
									"raw": "{\n    \"collection\": {\n        \"info\": {\n            \"name\": \"Test Collection\",\n            \"description\": \"This collection makes a request to the Postman Echo service to get a list of request headers sent by an HTTP client.\",\n            \"schema\": \"https://schema.getpostman.com/json/collection/v2.1.0/collection.json\"\n        },\n        \"item\": [\n            {\n                \"name\": \"Test GET Response\",\n                \"event\": [\n                    {\n                        \"listen\": \"test\",\n                        \"script\": {\n                            \"id\": \"7d2334fc-a84a-4c3d-b26c-7529afa4c0ae\",\n                            \"exec\": [\n                                \"pm.test(\\\"Status code is 200\\\", function () {\",\n                                \"    pm.response.to.have.status(200);\",\n                                \"});\"\n                                ],\n                            \"type\": \"text/javascript\"\n                            }\n                        }\n                    ],\n                \"request\": {\n                    \"url\": \"https://echo.getpostman.com/headers\",\n                    \"method\": \"GET\",\n                    \"header\": [\n                        {\n                            \"key\": \"Content-Type\",\n                            \"value\": \"application/json\"\n                        }\n                    ]\n                }\n            }\n        ]\n    }\n}",
									"options": {
										"raw": {
											"language": "json"
										}
									}
								},
								"url": {
									"raw": "https://api.getpostman.com/collections",
									"protocol": "https",
									"host": [
										"api",
										"getpostman",
										"com"
									],
									"path": [
										"collections"
									],
									"query": [
										{
											"key": "workspace",
											"value": "1f0df51a-8658-4ee8-a2a1-d2567dfa09a9",
											"description": "Optional. A workspace ID in which to create the collection.\n\nIf you do not include this query parameter, the system creates the collection in your \"My Workspace\" workspace.",
											"disabled": true
										}
									]
								}
							},
							"status": "OK",
							"code": 200,
							"_postman_previewlanguage": "json",
							"header": [
								{
									"key": "Content-Type",
									"value": "application/json",
									"name": "Content-Type",
									"description": {
										"content": "",
										"type": "text/plain"
									}
								}
							],
							"cookie": [],
							"body": "{\n    \"collection\": {\n        \"id\": \"12ece9e1-2abf-4edc-8e34-de66e74114d2\",\n        \"name\": \"Test Collection\",\n        \"uid\": \"12345678-12ece9e1-2abf-4edc-8e34-de66e74114d2\"\n    }\n}"
						},
						{
							"name": "Bad Request",
							"originalRequest": {
								"method": "POST",
								"header": [
									{
										"key": "Content-Type",
										"value": "application/json"
									}
								],
								"body": {
									"mode": "raw",
									"raw": "{\n    \"collection\": {\n        \"info\": {\n            \"name\": \"Test Collection\",\n            \"description\": \"This collection makes a request to the Postman Echo service to get a list of request headers sent by an HTTP client.\",\n            \"schema\": \"https://schema.getpostman.com/json/collection/v2.1.0/collection.json\"\n        },\n        \"item\": [\n            {\n                \"name\": \"Test GET Response\",\n                \"event\": [\n                    {\n                        \"listen\": \"test\",\n                        \"script\": {\n                            \"id\": \"7d2334fc-a84a-4c3d-b26c-7529afa4c0ae\",\n                            \"exec\": [\n                                \"pm.test(\\\"Status code is 200\\\", function () {\",\n                                \"    pm.response.to.have.status(200);\",\n                                \"});\"\n                                ],\n                            \"type\": \"text/javascript\"\n                            }\n                        }\n                    ],\n                \"request\": {\n                    \"url\": \"https://echo.getpostman.com/headers\",\n                    \"method\": \"GET\",\n                    \"header\": [\n                        {\n                            \"key\": \"Content-Type\",\n                            \"value\": \"application/json\"\n                        }\n                    ]\n                }\n            }\n        ]\n    }\n}",
									"options": {
										"raw": {
											"language": "json"
										}
									}
								},
								"url": {
									"raw": "https://api.getpostman.com/collections",
									"protocol": "https",
									"host": [
										"api",
										"getpostman",
										"com"
									],
									"path": [
										"collections"
									],
									"query": [
										{
											"key": "workspace",
											"value": "1f0df51a-8658-4ee8-a2a1-d2567dfa09a9",
											"description": "Optional. A workspace ID in which to create the collection.\n\nIf you do not include this query parameter, the system creates the collection in your \"My Workspace\" workspace.",
											"disabled": true
										}
									]
								}
							},
							"status": "Bad Request",
							"code": 400,
							"_postman_previewlanguage": "json",
							"header": [
								{
									"key": "Content-Type",
									"value": "application/json",
									"name": "Content-Type",
									"description": {
										"content": "",
										"type": "text/plain"
									}
								}
							],
							"cookie": [],
							"body": "{\n    \"error\": {\n        \"name\": \"instanceFoundError\",\n        \"message\": \"The specified item already exists.\",\n        \"details\": {\n            \"item\": \"collection\",\n            \"id\": \"12ece9e1-2abf-4edc-8e34-de66e74114d2\"\n        }\n    }\n}"
						},
						{
							"name": "Malformed Request",
							"originalRequest": {
								"method": "POST",
								"header": [
									{
										"key": "Content-Type",
										"value": "application/json",
										"name": "Content-Type",
										"type": "text"
									}
								],
								"body": {
									"mode": "raw",
									"raw": "{\n    \"collection\": {\n        \"item\": [\n            {\n                \"name\": \"Test GET Response\",\n                \"event\": [\n                    {\n                        \"listen\": \"test\",\n                        \"script\": {\n                            \"id\": \"7d2334fc-a84a-4c3d-b26c-7529afa4c0ae\",\n                            \"exec\": [\n                                \"pm.test(\\\"Status code is 200\\\", function () {\",\n                                \"    pm.response.to.have.status(200);\",\n                                \"});\"\n                                ],\n                            \"type\": \"text/javascript\"\n                            }\n                        }\n                    ],\n                \"request\": {\n                    \"url\": \"https://echo.getpostman.com/headers\",\n                    \"method\": \"GET\",\n                    \"header\": [\n                        {\n                            \"key\": \"Content-Type\",\n                            \"value\": \"application/json\"\n                        }\n                    ]\n                }\n            }\n        ]\n    }\n}",
									"options": {
										"raw": {
											"language": "json"
										}
									}
								},
								"url": {
									"raw": "https://api.getpostman.com/collections",
									"protocol": "https",
									"host": [
										"api",
										"getpostman",
										"com"
									],
									"path": [
										"collections"
									],
									"query": [
										{
											"key": "workspace",
											"value": "1f0df51a-8658-4ee8-a2a1-d2567dfa09a9",
											"description": "Optional. A workspace ID in which to create the collection.\n\nIf you do not include this query parameter, the system creates the collection in your \"My Workspace\" workspace.",
											"disabled": true
										}
									]
								}
							},
							"status": "Bad Request",
							"code": 400,
							"_postman_previewlanguage": "json",
							"header": [
								{
									"key": "Content-Type",
									"value": "application/json; charset=utf-8"
								}
							],
							"cookie": [],
							"body": "{\n    \"error\": {\n        \"name\": \"malformedRequestError\",\n        \"message\": \"Found 1 errors with the supplied collection.\",\n        \"details\": [\n            \": must have required property 'info'\"\n        ]\n    }\n}"
						},
						{
							"name": "Rate Limit Exceeded",
							"originalRequest": {
								"method": "POST",
								"header": [
									{
										"key": "Content-Type",
										"value": "application/json"
									}
								],
								"body": {
									"mode": "raw",
									"raw": "{\n    \"collection\": {\n        \"item\": [\n            {\n                \"name\": \"Test GET Response\",\n                \"event\": [\n                    {\n                        \"listen\": \"test\",\n                        \"script\": {\n                            \"id\": \"7d2334fc-a84a-4c3d-b26c-7529afa4c0ae\",\n                            \"exec\": [\n                                \"pm.test(\\\"Status code is 200\\\", function () {\",\n                                \"    pm.response.to.have.status(200);\",\n                                \"});\"\n                                ],\n                            \"type\": \"text/javascript\"\n                            }\n                        }\n                    ],\n                \"request\": {\n                    \"url\": \"https://echo.getpostman.com/headers\",\n                    \"method\": \"GET\",\n                    \"header\": [\n                        {\n                            \"key\": \"Content-Type\",\n                            \"value\": \"application/json\"\n                        }\n                    ]\n                }\n            }\n        ]\n    }\n}",
									"options": {
										"raw": {
											"language": "json"
										}
									}
								},
								"url": {
									"raw": "https://api.getpostman.com/collections",
									"protocol": "https",
									"host": [
										"api",
										"getpostman",
										"com"
									],
									"path": [
										"collections"
									],
									"query": [
										{
											"key": "workspace",
											"value": "1f0df51a-8658-4ee8-a2a1-d2567dfa09a9",
											"description": "Optional. A workspace ID in which to create the collection.\n\nIf you do not include this query parameter, the system creates the collection in your \"My Workspace\" workspace.",
											"disabled": true
										}
									]
								}
							},
							"status": "Too Many Requests",
							"code": 429,
							"_postman_previewlanguage": "json",
							"header": [
								{
									"key": "Content-Type",
									"value": "application/json",
									"description": ""
								}
							],
							"cookie": [],
							"body": "{\n    \"error\": \"rateLimited\",\n    \"message\": \"Rate limit exceeded. Please retry after 1669048687\"\n}"
						}
					]
				},
				{
					"name": "All Events",
					"event": [
						{
							"listen": "test",
							"script": {
								"exec": [
									""
								],
								"type": "text/javascript",
								"packages": {}
							}
						}
					],
					"protocolProfileBehavior": {
						"disableBodyPruning": true
					},
					"request": {
						"method": "GET",
						"header": [
							{
								"key": "Content-Type",
								"value": "application/json"
							},
							{
								"key": "Authorization",
								"value": "",
								"disabled": true
							}
						],
						"body": {
							"mode": "raw",
							"raw": ""
						},
						"url": {
							"raw": "http://localhost:8000/api/all-events",
							"protocol": "http",
							"host": [
								"localhost"
							],
							"port": "8000",
							"path": [
								"api",
								"all-events"
							],
							"query": [
								{
									"key": "workspace",
									"value": "{{workspaceId}}",
									"description": "Optional. A workspace ID in which to create the collection.\n\nIf you do not include this query parameter, the system creates the collection in your \"My Workspace\" workspace.",
									"disabled": true
								}
							]
						},
						"description": "Creates a collection using the [Postman Collection v2 schema format](https://schema.postman.com/json/collection/v2.1.0/docs/index.html). Include a `collection` object in the request body that contains the following required properties:\n\n*   `info` — An **object** that contains the following properties:\n    *   `name` — A **string** value that contains the collection's name.\n    *   `schema` — A **string** that contains a URL to the collection's schema. For example, the `https://schema.getpostman.com/collection/v1` URL.\n*   `item` — An **object** that contains the HTTP request and response information.\n    *   `request` — An **object** that contains the collection's request information. For a complete list of values, refer to the `definitions.request` entry in the [collection.json schema file](https://schema.postman.com/json/collection/v2.1.0/collection.json). If you pass an empty object for this value, the system defaults to an untitled GET request.\n\n**Note:**\n\n*   For a complete list of available property values for this endpoint, use the following references available in the [collection.json schema file](https://schema.postman.com/json/collection/v2.1.0/collection.json):\n    *   `info` object — Use the `definitions.info` entry.\n    *   `item` object — Use the `definitions.items` entry.\n*   For all other possible values, refer to the [collection.json schema file](https://schema.postman.com/json/collection/v2.1.0/collection.json)."
					},
					"response": [
						{
							"name": "Successful Response",
							"originalRequest": {
								"method": "POST",
								"header": [
									{
										"key": "Content-Type",
										"value": "application/json"
									}
								],
								"body": {
									"mode": "raw",
									"raw": "{\n    \"collection\": {\n        \"info\": {\n            \"name\": \"Test Collection\",\n            \"description\": \"This collection makes a request to the Postman Echo service to get a list of request headers sent by an HTTP client.\",\n            \"schema\": \"https://schema.getpostman.com/json/collection/v2.1.0/collection.json\"\n        },\n        \"item\": [\n            {\n                \"name\": \"Test GET Response\",\n                \"event\": [\n                    {\n                        \"listen\": \"test\",\n                        \"script\": {\n                            \"id\": \"7d2334fc-a84a-4c3d-b26c-7529afa4c0ae\",\n                            \"exec\": [\n                                \"pm.test(\\\"Status code is 200\\\", function () {\",\n                                \"    pm.response.to.have.status(200);\",\n                                \"});\"\n                                ],\n                            \"type\": \"text/javascript\"\n                            }\n                        }\n                    ],\n                \"request\": {\n                    \"url\": \"https://echo.getpostman.com/headers\",\n                    \"method\": \"GET\",\n                    \"header\": [\n                        {\n                            \"key\": \"Content-Type\",\n                            \"value\": \"application/json\"\n                        }\n                    ]\n                }\n            }\n        ]\n    }\n}",
									"options": {
										"raw": {
											"language": "json"
										}
									}
								},
								"url": {
									"raw": "https://api.getpostman.com/collections",
									"protocol": "https",
									"host": [
										"api",
										"getpostman",
										"com"
									],
									"path": [
										"collections"
									],
									"query": [
										{
											"key": "workspace",
											"value": "1f0df51a-8658-4ee8-a2a1-d2567dfa09a9",
											"description": "Optional. A workspace ID in which to create the collection.\n\nIf you do not include this query parameter, the system creates the collection in your \"My Workspace\" workspace.",
											"disabled": true
										}
									]
								}
							},
							"status": "OK",
							"code": 200,
							"_postman_previewlanguage": "json",
							"header": [
								{
									"key": "Content-Type",
									"value": "application/json",
									"name": "Content-Type",
									"description": {
										"content": "",
										"type": "text/plain"
									}
								}
							],
							"cookie": [],
							"body": "{\n    \"collection\": {\n        \"id\": \"12ece9e1-2abf-4edc-8e34-de66e74114d2\",\n        \"name\": \"Test Collection\",\n        \"uid\": \"12345678-12ece9e1-2abf-4edc-8e34-de66e74114d2\"\n    }\n}"
						},
						{
							"name": "Bad Request",
							"originalRequest": {
								"method": "POST",
								"header": [
									{
										"key": "Content-Type",
										"value": "application/json"
									}
								],
								"body": {
									"mode": "raw",
									"raw": "{\n    \"collection\": {\n        \"info\": {\n            \"name\": \"Test Collection\",\n            \"description\": \"This collection makes a request to the Postman Echo service to get a list of request headers sent by an HTTP client.\",\n            \"schema\": \"https://schema.getpostman.com/json/collection/v2.1.0/collection.json\"\n        },\n        \"item\": [\n            {\n                \"name\": \"Test GET Response\",\n                \"event\": [\n                    {\n                        \"listen\": \"test\",\n                        \"script\": {\n                            \"id\": \"7d2334fc-a84a-4c3d-b26c-7529afa4c0ae\",\n                            \"exec\": [\n                                \"pm.test(\\\"Status code is 200\\\", function () {\",\n                                \"    pm.response.to.have.status(200);\",\n                                \"});\"\n                                ],\n                            \"type\": \"text/javascript\"\n                            }\n                        }\n                    ],\n                \"request\": {\n                    \"url\": \"https://echo.getpostman.com/headers\",\n                    \"method\": \"GET\",\n                    \"header\": [\n                        {\n                            \"key\": \"Content-Type\",\n                            \"value\": \"application/json\"\n                        }\n                    ]\n                }\n            }\n        ]\n    }\n}",
									"options": {
										"raw": {
											"language": "json"
										}
									}
								},
								"url": {
									"raw": "https://api.getpostman.com/collections",
									"protocol": "https",
									"host": [
										"api",
										"getpostman",
										"com"
									],
									"path": [
										"collections"
									],
									"query": [
										{
											"key": "workspace",
											"value": "1f0df51a-8658-4ee8-a2a1-d2567dfa09a9",
											"description": "Optional. A workspace ID in which to create the collection.\n\nIf you do not include this query parameter, the system creates the collection in your \"My Workspace\" workspace.",
											"disabled": true
										}
									]
								}
							},
							"status": "Bad Request",
							"code": 400,
							"_postman_previewlanguage": "json",
							"header": [
								{
									"key": "Content-Type",
									"value": "application/json",
									"name": "Content-Type",
									"description": {
										"content": "",
										"type": "text/plain"
									}
								}
							],
							"cookie": [],
							"body": "{\n    \"error\": {\n        \"name\": \"instanceFoundError\",\n        \"message\": \"The specified item already exists.\",\n        \"details\": {\n            \"item\": \"collection\",\n            \"id\": \"12ece9e1-2abf-4edc-8e34-de66e74114d2\"\n        }\n    }\n}"
						},
						{
							"name": "Malformed Request",
							"originalRequest": {
								"method": "POST",
								"header": [
									{
										"key": "Content-Type",
										"value": "application/json",
										"name": "Content-Type",
										"type": "text"
									}
								],
								"body": {
									"mode": "raw",
									"raw": "{\n    \"collection\": {\n        \"item\": [\n            {\n                \"name\": \"Test GET Response\",\n                \"event\": [\n                    {\n                        \"listen\": \"test\",\n                        \"script\": {\n                            \"id\": \"7d2334fc-a84a-4c3d-b26c-7529afa4c0ae\",\n                            \"exec\": [\n                                \"pm.test(\\\"Status code is 200\\\", function () {\",\n                                \"    pm.response.to.have.status(200);\",\n                                \"});\"\n                                ],\n                            \"type\": \"text/javascript\"\n                            }\n                        }\n                    ],\n                \"request\": {\n                    \"url\": \"https://echo.getpostman.com/headers\",\n                    \"method\": \"GET\",\n                    \"header\": [\n                        {\n                            \"key\": \"Content-Type\",\n                            \"value\": \"application/json\"\n                        }\n                    ]\n                }\n            }\n        ]\n    }\n}",
									"options": {
										"raw": {
											"language": "json"
										}
									}
								},
								"url": {
									"raw": "https://api.getpostman.com/collections",
									"protocol": "https",
									"host": [
										"api",
										"getpostman",
										"com"
									],
									"path": [
										"collections"
									],
									"query": [
										{
											"key": "workspace",
											"value": "1f0df51a-8658-4ee8-a2a1-d2567dfa09a9",
											"description": "Optional. A workspace ID in which to create the collection.\n\nIf you do not include this query parameter, the system creates the collection in your \"My Workspace\" workspace.",
											"disabled": true
										}
									]
								}
							},
							"status": "Bad Request",
							"code": 400,
							"_postman_previewlanguage": "json",
							"header": [
								{
									"key": "Content-Type",
									"value": "application/json; charset=utf-8"
								}
							],
							"cookie": [],
							"body": "{\n    \"error\": {\n        \"name\": \"malformedRequestError\",\n        \"message\": \"Found 1 errors with the supplied collection.\",\n        \"details\": [\n            \": must have required property 'info'\"\n        ]\n    }\n}"
						},
						{
							"name": "Rate Limit Exceeded",
							"originalRequest": {
								"method": "POST",
								"header": [
									{
										"key": "Content-Type",
										"value": "application/json"
									}
								],
								"body": {
									"mode": "raw",
									"raw": "{\n    \"collection\": {\n        \"item\": [\n            {\n                \"name\": \"Test GET Response\",\n                \"event\": [\n                    {\n                        \"listen\": \"test\",\n                        \"script\": {\n                            \"id\": \"7d2334fc-a84a-4c3d-b26c-7529afa4c0ae\",\n                            \"exec\": [\n                                \"pm.test(\\\"Status code is 200\\\", function () {\",\n                                \"    pm.response.to.have.status(200);\",\n                                \"});\"\n                                ],\n                            \"type\": \"text/javascript\"\n                            }\n                        }\n                    ],\n                \"request\": {\n                    \"url\": \"https://echo.getpostman.com/headers\",\n                    \"method\": \"GET\",\n                    \"header\": [\n                        {\n                            \"key\": \"Content-Type\",\n                            \"value\": \"application/json\"\n                        }\n                    ]\n                }\n            }\n        ]\n    }\n}",
									"options": {
										"raw": {
											"language": "json"
										}
									}
								},
								"url": {
									"raw": "https://api.getpostman.com/collections",
									"protocol": "https",
									"host": [
										"api",
										"getpostman",
										"com"
									],
									"path": [
										"collections"
									],
									"query": [
										{
											"key": "workspace",
											"value": "1f0df51a-8658-4ee8-a2a1-d2567dfa09a9",
											"description": "Optional. A workspace ID in which to create the collection.\n\nIf you do not include this query parameter, the system creates the collection in your \"My Workspace\" workspace.",
											"disabled": true
										}
									]
								}
							},
							"status": "Too Many Requests",
							"code": 429,
							"_postman_previewlanguage": "json",
							"header": [
								{
									"key": "Content-Type",
									"value": "application/json",
									"description": ""
								}
							],
							"cookie": [],
							"body": "{\n    \"error\": \"rateLimited\",\n    \"message\": \"Rate limit exceeded. Please retry after 1669048687\"\n}"
						}
					]
				},
				{
					"name": "Event Detail",
					"event": [
						{
							"listen": "test",
							"script": {
								"exec": [
									""
								],
								"type": "text/javascript",
								"packages": {}
							}
						}
					],
					"protocolProfileBehavior": {
						"disableBodyPruning": true
					},
					"request": {
						"method": "GET",
						"header": [
							{
								"key": "Content-Type",
								"value": "application/json"
							},
							{
								"key": "Authorization",
								"value": "",
								"disabled": true
							}
						],
						"body": {
							"mode": "raw",
							"raw": ""
						},
						"url": {
							"raw": "http://localhost:8000/api/event-detail/46",
							"protocol": "http",
							"host": [
								"localhost"
							],
							"port": "8000",
							"path": [
								"api",
								"event-detail",
								"46"
							],
							"query": [
								{
									"key": "workspace",
									"value": "{{workspaceId}}",
									"description": "Optional. A workspace ID in which to create the collection.\n\nIf you do not include this query parameter, the system creates the collection in your \"My Workspace\" workspace.",
									"disabled": true
								}
							]
						},
						"description": "Creates a collection using the [Postman Collection v2 schema format](https://schema.postman.com/json/collection/v2.1.0/docs/index.html). Include a `collection` object in the request body that contains the following required properties:\n\n*   `info` — An **object** that contains the following properties:\n    *   `name` — A **string** value that contains the collection's name.\n    *   `schema` — A **string** that contains a URL to the collection's schema. For example, the `https://schema.getpostman.com/collection/v1` URL.\n*   `item` — An **object** that contains the HTTP request and response information.\n    *   `request` — An **object** that contains the collection's request information. For a complete list of values, refer to the `definitions.request` entry in the [collection.json schema file](https://schema.postman.com/json/collection/v2.1.0/collection.json). If you pass an empty object for this value, the system defaults to an untitled GET request.\n\n**Note:**\n\n*   For a complete list of available property values for this endpoint, use the following references available in the [collection.json schema file](https://schema.postman.com/json/collection/v2.1.0/collection.json):\n    *   `info` object — Use the `definitions.info` entry.\n    *   `item` object — Use the `definitions.items` entry.\n*   For all other possible values, refer to the [collection.json schema file](https://schema.postman.com/json/collection/v2.1.0/collection.json)."
					},
					"response": [
						{
							"name": "Successful Response",
							"originalRequest": {
								"method": "POST",
								"header": [
									{
										"key": "Content-Type",
										"value": "application/json"
									}
								],
								"body": {
									"mode": "raw",
									"raw": "{\n    \"collection\": {\n        \"info\": {\n            \"name\": \"Test Collection\",\n            \"description\": \"This collection makes a request to the Postman Echo service to get a list of request headers sent by an HTTP client.\",\n            \"schema\": \"https://schema.getpostman.com/json/collection/v2.1.0/collection.json\"\n        },\n        \"item\": [\n            {\n                \"name\": \"Test GET Response\",\n                \"event\": [\n                    {\n                        \"listen\": \"test\",\n                        \"script\": {\n                            \"id\": \"7d2334fc-a84a-4c3d-b26c-7529afa4c0ae\",\n                            \"exec\": [\n                                \"pm.test(\\\"Status code is 200\\\", function () {\",\n                                \"    pm.response.to.have.status(200);\",\n                                \"});\"\n                                ],\n                            \"type\": \"text/javascript\"\n                            }\n                        }\n                    ],\n                \"request\": {\n                    \"url\": \"https://echo.getpostman.com/headers\",\n                    \"method\": \"GET\",\n                    \"header\": [\n                        {\n                            \"key\": \"Content-Type\",\n                            \"value\": \"application/json\"\n                        }\n                    ]\n                }\n            }\n        ]\n    }\n}",
									"options": {
										"raw": {
											"language": "json"
										}
									}
								},
								"url": {
									"raw": "https://api.getpostman.com/collections",
									"protocol": "https",
									"host": [
										"api",
										"getpostman",
										"com"
									],
									"path": [
										"collections"
									],
									"query": [
										{
											"key": "workspace",
											"value": "1f0df51a-8658-4ee8-a2a1-d2567dfa09a9",
											"description": "Optional. A workspace ID in which to create the collection.\n\nIf you do not include this query parameter, the system creates the collection in your \"My Workspace\" workspace.",
											"disabled": true
										}
									]
								}
							},
							"status": "OK",
							"code": 200,
							"_postman_previewlanguage": "json",
							"header": [
								{
									"key": "Content-Type",
									"value": "application/json",
									"name": "Content-Type",
									"description": {
										"content": "",
										"type": "text/plain"
									}
								}
							],
							"cookie": [],
							"body": "{\n    \"collection\": {\n        \"id\": \"12ece9e1-2abf-4edc-8e34-de66e74114d2\",\n        \"name\": \"Test Collection\",\n        \"uid\": \"12345678-12ece9e1-2abf-4edc-8e34-de66e74114d2\"\n    }\n}"
						},
						{
							"name": "Bad Request",
							"originalRequest": {
								"method": "POST",
								"header": [
									{
										"key": "Content-Type",
										"value": "application/json"
									}
								],
								"body": {
									"mode": "raw",
									"raw": "{\n    \"collection\": {\n        \"info\": {\n            \"name\": \"Test Collection\",\n            \"description\": \"This collection makes a request to the Postman Echo service to get a list of request headers sent by an HTTP client.\",\n            \"schema\": \"https://schema.getpostman.com/json/collection/v2.1.0/collection.json\"\n        },\n        \"item\": [\n            {\n                \"name\": \"Test GET Response\",\n                \"event\": [\n                    {\n                        \"listen\": \"test\",\n                        \"script\": {\n                            \"id\": \"7d2334fc-a84a-4c3d-b26c-7529afa4c0ae\",\n                            \"exec\": [\n                                \"pm.test(\\\"Status code is 200\\\", function () {\",\n                                \"    pm.response.to.have.status(200);\",\n                                \"});\"\n                                ],\n                            \"type\": \"text/javascript\"\n                            }\n                        }\n                    ],\n                \"request\": {\n                    \"url\": \"https://echo.getpostman.com/headers\",\n                    \"method\": \"GET\",\n                    \"header\": [\n                        {\n                            \"key\": \"Content-Type\",\n                            \"value\": \"application/json\"\n                        }\n                    ]\n                }\n            }\n        ]\n    }\n}",
									"options": {
										"raw": {
											"language": "json"
										}
									}
								},
								"url": {
									"raw": "https://api.getpostman.com/collections",
									"protocol": "https",
									"host": [
										"api",
										"getpostman",
										"com"
									],
									"path": [
										"collections"
									],
									"query": [
										{
											"key": "workspace",
											"value": "1f0df51a-8658-4ee8-a2a1-d2567dfa09a9",
											"description": "Optional. A workspace ID in which to create the collection.\n\nIf you do not include this query parameter, the system creates the collection in your \"My Workspace\" workspace.",
											"disabled": true
										}
									]
								}
							},
							"status": "Bad Request",
							"code": 400,
							"_postman_previewlanguage": "json",
							"header": [
								{
									"key": "Content-Type",
									"value": "application/json",
									"name": "Content-Type",
									"description": {
										"content": "",
										"type": "text/plain"
									}
								}
							],
							"cookie": [],
							"body": "{\n    \"error\": {\n        \"name\": \"instanceFoundError\",\n        \"message\": \"The specified item already exists.\",\n        \"details\": {\n            \"item\": \"collection\",\n            \"id\": \"12ece9e1-2abf-4edc-8e34-de66e74114d2\"\n        }\n    }\n}"
						},
						{
							"name": "Malformed Request",
							"originalRequest": {
								"method": "POST",
								"header": [
									{
										"key": "Content-Type",
										"value": "application/json",
										"name": "Content-Type",
										"type": "text"
									}
								],
								"body": {
									"mode": "raw",
									"raw": "{\n    \"collection\": {\n        \"item\": [\n            {\n                \"name\": \"Test GET Response\",\n                \"event\": [\n                    {\n                        \"listen\": \"test\",\n                        \"script\": {\n                            \"id\": \"7d2334fc-a84a-4c3d-b26c-7529afa4c0ae\",\n                            \"exec\": [\n                                \"pm.test(\\\"Status code is 200\\\", function () {\",\n                                \"    pm.response.to.have.status(200);\",\n                                \"});\"\n                                ],\n                            \"type\": \"text/javascript\"\n                            }\n                        }\n                    ],\n                \"request\": {\n                    \"url\": \"https://echo.getpostman.com/headers\",\n                    \"method\": \"GET\",\n                    \"header\": [\n                        {\n                            \"key\": \"Content-Type\",\n                            \"value\": \"application/json\"\n                        }\n                    ]\n                }\n            }\n        ]\n    }\n}",
									"options": {
										"raw": {
											"language": "json"
										}
									}
								},
								"url": {
									"raw": "https://api.getpostman.com/collections",
									"protocol": "https",
									"host": [
										"api",
										"getpostman",
										"com"
									],
									"path": [
										"collections"
									],
									"query": [
										{
											"key": "workspace",
											"value": "1f0df51a-8658-4ee8-a2a1-d2567dfa09a9",
											"description": "Optional. A workspace ID in which to create the collection.\n\nIf you do not include this query parameter, the system creates the collection in your \"My Workspace\" workspace.",
											"disabled": true
										}
									]
								}
							},
							"status": "Bad Request",
							"code": 400,
							"_postman_previewlanguage": "json",
							"header": [
								{
									"key": "Content-Type",
									"value": "application/json; charset=utf-8"
								}
							],
							"cookie": [],
							"body": "{\n    \"error\": {\n        \"name\": \"malformedRequestError\",\n        \"message\": \"Found 1 errors with the supplied collection.\",\n        \"details\": [\n            \": must have required property 'info'\"\n        ]\n    }\n}"
						},
						{
							"name": "Rate Limit Exceeded",
							"originalRequest": {
								"method": "POST",
								"header": [
									{
										"key": "Content-Type",
										"value": "application/json"
									}
								],
								"body": {
									"mode": "raw",
									"raw": "{\n    \"collection\": {\n        \"item\": [\n            {\n                \"name\": \"Test GET Response\",\n                \"event\": [\n                    {\n                        \"listen\": \"test\",\n                        \"script\": {\n                            \"id\": \"7d2334fc-a84a-4c3d-b26c-7529afa4c0ae\",\n                            \"exec\": [\n                                \"pm.test(\\\"Status code is 200\\\", function () {\",\n                                \"    pm.response.to.have.status(200);\",\n                                \"});\"\n                                ],\n                            \"type\": \"text/javascript\"\n                            }\n                        }\n                    ],\n                \"request\": {\n                    \"url\": \"https://echo.getpostman.com/headers\",\n                    \"method\": \"GET\",\n                    \"header\": [\n                        {\n                            \"key\": \"Content-Type\",\n                            \"value\": \"application/json\"\n                        }\n                    ]\n                }\n            }\n        ]\n    }\n}",
									"options": {
										"raw": {
											"language": "json"
										}
									}
								},
								"url": {
									"raw": "https://api.getpostman.com/collections",
									"protocol": "https",
									"host": [
										"api",
										"getpostman",
										"com"
									],
									"path": [
										"collections"
									],
									"query": [
										{
											"key": "workspace",
											"value": "1f0df51a-8658-4ee8-a2a1-d2567dfa09a9",
											"description": "Optional. A workspace ID in which to create the collection.\n\nIf you do not include this query parameter, the system creates the collection in your \"My Workspace\" workspace.",
											"disabled": true
										}
									]
								}
							},
							"status": "Too Many Requests",
							"code": 429,
							"_postman_previewlanguage": "json",
							"header": [
								{
									"key": "Content-Type",
									"value": "application/json",
									"description": ""
								}
							],
							"cookie": [],
							"body": "{\n    \"error\": \"rateLimited\",\n    \"message\": \"Rate limit exceeded. Please retry after 1669048687\"\n}"
						}
					]
				}
			],
			"description": "The `/collections` endpoints let you manage your [collections](https://learning.postman.com/docs/sending-requests/intro-to-collections/)."
		}
	],
	"auth": {
		"type": "apikey",
		"apikey": {
			"key": "X-API-Key",
			"value": "{{token}}"
		}
	},
	"event": [
		{
			"listen": "prerequest",
			"script": {
				"type": "text/javascript",
				"exec": [
					""
				]
			}
		},
		{
			"listen": "test",
			"script": {
				"type": "text/javascript",
				"exec": [
					""
				]
			}
		}
	],
	"variable": [
		{
			"key": "baseUrl",
			"value": "https://farming-simulator.pstmn.io"
		}
	]
}postman_collection.json…]()


- ****
- ****
- ****









php artisan schedule:run
## Laravel Sponsors

We would like to extend our thanks to the following sponsors for funding Laravel development. If you are interested in becoming a sponsor, please visit the [Laravel Partners program](https://partners.laravel.com).

### Premium Partners

- **[Vehikl](https://vehikl.com/)**
- **[Tighten Co.](https://tighten.co)**
- **[WebReinvent](https://webreinvent.com/)**
- **[Kirschbaum Development Group](https://kirschbaumdevelopment.com)**
- **[64 Robots](https://64robots.com)**
- **[Curotec](https://www.curotec.com/services/technologies/laravel/)**
- **[Cyber-Duck](https://cyber-duck.co.uk)**
- **[DevSquad](https://devsquad.com/hire-laravel-developers)**
- **[Jump24](https://jump24.co.uk)**
- **[Redberry](https://redberry.international/laravel/)**
- **[Active Logic](https://activelogic.com)**
- **[byte5](https://byte5.de)**
- **[OP.GG](https://op.gg)**

## Contributing

Thank you for considering contributing to the Laravel framework! The contribution guide can be found in the [Laravel documentation](https://laravel.com/docs/contributions).

## Code of Conduct

In order to ensure that the Laravel community is welcoming to all, please review and abide by the [Code of Conduct](https://laravel.com/docs/contributions#code-of-conduct).

## Security Vulnerabilities

If you discover a security vulnerability within Laravel, please send an e-mail to Taylor Otwell via [taylor@laravel.com](mailto:taylor@laravel.com). All security vulnerabilities will be promptly addressed.

## License

The Laravel framework is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).
