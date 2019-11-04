class UsersController < ApplicationController

  def index
    users = User.all
    render json: users
  end

  def show
    user = User.find(params[:id])
    render json: user
  end

  def planning

  zxcv = <<-JSON
  ⊖{
    "ocid": "ocds-213czf-000-00001",
    "id": "ocds-213czf-000-00001-05-contract",
    "date": "2010-05-10T10:30:00Z",
    "language": "en",
    "tag": ⊖[
        "contract"
    ],
    "initiationType": "tender",
    "parties": ⊖[
       ⊖{
            "identifier": ⊕{...},
            "name": "London Borough of Barnet",
            "address": ⊕{...},
            "contactPoint": ⊕{...},
            "roles": ⊕[ ... ],
            "id": "GB-LAC-E09000003"
        },
       ⊖{
            "identifier": ⊕{...},
            "additionalIdentifiers": ⊕[ ... ],
            "name": "AnyCorp Cycle Provision",
            "address": ⊕{...},
            "contactPoint": ⊕{...},
            "roles": ⊕[ ... ],
            "id": "GB-COH-1234567844"
        }
    ],
    "buyer": ⊕{...},
    "awards": ⊖[
       ⊖{
            "id": "ocds-213czf-000-00001-award-01",
            "title": "Award of contract to build new cycle lanes in the centre of town.",
            "description": "AnyCorp Ltd has been awarded the contract to build new cycle lanes in the centre of town.",
            "status": "active",
            "date": "2010-05-10T10:30:00Z",
            "value": ⊖{
                "amount": 11000000,
                "currency": "GBP"
            },
            "suppliers": ⊕[ ... ],
            "items": ⊖[
               ⊖{
                    "id": "0001",
                    "description": "string",
                    "classification": ⊕{...},
                    "additionalClassifications": ⊕[ ... ],
                    "quantity": 8,
                    "unit": ⊕{...}
                }
            ],
            "contractPeriod": ⊕{...},
            "documents": ⊖[
               ⊖{
                    "id": "0007",
                    "documentType": "notice",
                    "title": "Award notice",
                    "description": "Award of contract to build new cycle lanes in the centre of town to AnyCorp Ltd.",
                    "url": "http://example.com/tender-notices/ocds-213czf-000-00001-04.html",
                    "datePublished": "2010-05-10T10:30:00Z",
                    "format": "text/html",
                    "language": "en"
                }
            ]
        }
    ],
    "contracts": ⊖[
       ⊖{
            "id": "ocds-213czf-000-00001-contract-01",
            "awardID": "ocds-213czf-000-00001-award-01",
            "title": "Contract to build new cycle lanes in the centre of town.",
            "description": ⊕"A contract has been signed between the Council and AnyCorp Ltd for construction of new cycle lanes i ...",
            "status": "active",
            "period": ⊖{
                "startDate": "2010-07-01T00:00:00Z",
                "endDate": "2011-08-01T23:59:00Z"
            },
            "value": ⊖{
                "amount": 11000000,
                "currency": "GBP"
            },
            "items": ⊖[
               ⊖{
                    "id": "0001",
                    "description": "string",
                    "classification": ⊕{...},
                    "additionalClassifications": ⊕[ ... ],
                    "quantity": 8,
                    "unit": ⊕{...}
                }
            ],
            "dateSigned": "2015-06-10T14:23:12Z",
            "documents": ⊖[
               ⊖{
                    "id": "0008",
                    "documentType": "contractSigned",
                    "title": "Signed Contract",
                    "description": "The Signed Contract for Cycle Path Construction",
                    "url": "http://example.com/contracts/ocds-213czf-000-00001",
                    "datePublished": "2015-06-10T16:43:12Z",
                    "format": "application/pdf",
                    "language": "en"
                }
            ]
        }
    ]
}

JSON
render json: zxcv

  end
end
