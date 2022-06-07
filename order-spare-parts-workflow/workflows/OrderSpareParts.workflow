{
	"contents": {
		"cb2cbae9-4b51-4534-85d9-f8f248cad614": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "orderspareparts",
			"subject": "OrderSpareParts",
			"name": "OrderSpareParts",
			"documentation": "",
			"lastIds": "2110680e-504d-4084-b141-40621947246e",
			"events": {
				"0052922e-9557-45d3-a524-ef597c1c57a4": {
					"name": "StartEvent1"
				},
				"cbe4cceb-91ab-44a5-beff-7efd148bdc30": {
					"name": "EndEvent1"
				}
			},
			"activities": {
				"c0f2a7a7-4a99-4f2b-82da-4609a91f99c7": {
					"name": "Approve Spare Parts Order"
				}
			},
			"sequenceFlows": {
				"402d6bf2-76ce-456f-97a1-5d17c591f544": {
					"name": "SequenceFlow1"
				},
				"5cd8f2d6-20e9-462e-aee6-42cc588581d6": {
					"name": "SequenceFlow2"
				}
			},
			"diagrams": {
				"36211841-d8e8-473c-a582-4f20bd3c4e80": {}
			}
		},
		"0052922e-9557-45d3-a524-ef597c1c57a4": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "StartEvent1",
			"sampleContextRefs": {
				"4aec2c11-89ef-476b-ab83-e72fcc45576b": {}
			}
		},
		"cbe4cceb-91ab-44a5-beff-7efd148bdc30": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent1"
		},
		"c0f2a7a7-4a99-4f2b-82da-4609a91f99c7": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Approve Spare Parts Order for ${context.start.quantity} '${context.start.product}'",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "vishal.kwatra@sap.com",
			"formReference": "/forms/OrderSpareParts/ApproveSparePartsOrder.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "approvesparepartsorder"
			}, {
				"key": "formRevision",
				"value": "v1"
			}],
			"id": "usertask1",
			"name": "Approve Spare Parts Order"
		},
		"402d6bf2-76ce-456f-97a1-5d17c591f544": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "0052922e-9557-45d3-a524-ef597c1c57a4",
			"targetRef": "c0f2a7a7-4a99-4f2b-82da-4609a91f99c7"
		},
		"5cd8f2d6-20e9-462e-aee6-42cc588581d6": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "c0f2a7a7-4a99-4f2b-82da-4609a91f99c7",
			"targetRef": "cbe4cceb-91ab-44a5-beff-7efd148bdc30"
		},
		"36211841-d8e8-473c-a582-4f20bd3c4e80": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"4eb202aa-498a-4835-9583-5d58dd0e5348": {},
				"4465d7cd-ce61-4a57-a182-60c70fd3839c": {},
				"00e3bd31-07fc-4867-a907-82a540e9fedb": {},
				"1a8261c5-8e1c-4eba-b932-e2d4e116e531": {},
				"5b7cbfef-a042-4c21-8b1c-d092fbcccff2": {}
			}
		},
		"4aec2c11-89ef-476b-ab83-e72fcc45576b": {
			"classDefinition": "com.sap.bpm.wfs.SampleContext",
			"reference": "/sample-data/OrderSparePartsStart.json",
			"id": "default-start-context"
		},
		"4eb202aa-498a-4835-9583-5d58dd0e5348": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 100,
			"y": 100,
			"width": 32,
			"height": 32,
			"object": "0052922e-9557-45d3-a524-ef597c1c57a4"
		},
		"4465d7cd-ce61-4a57-a182-60c70fd3839c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 340,
			"y": 100,
			"width": 35,
			"height": 35,
			"object": "cbe4cceb-91ab-44a5-beff-7efd148bdc30"
		},
		"00e3bd31-07fc-4867-a907-82a540e9fedb": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "116,116.375 236.24147286593848,116.375",
			"sourceSymbol": "4eb202aa-498a-4835-9583-5d58dd0e5348",
			"targetSymbol": "1a8261c5-8e1c-4eba-b932-e2d4e116e531",
			"object": "402d6bf2-76ce-456f-97a1-5d17c591f544"
		},
		"1a8261c5-8e1c-4eba-b932-e2d4e116e531": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 186.24147286593848,
			"y": 86.75,
			"width": 100,
			"height": 60,
			"object": "c0f2a7a7-4a99-4f2b-82da-4609a91f99c7"
		},
		"5b7cbfef-a042-4c21-8b1c-d092fbcccff2": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "236.24147286593848,117.125 357.5,117.125",
			"sourceSymbol": "1a8261c5-8e1c-4eba-b932-e2d4e116e531",
			"targetSymbol": "4465d7cd-ce61-4a57-a182-60c70fd3839c",
			"object": "5cd8f2d6-20e9-462e-aee6-42cc588581d6"
		},
		"2110680e-504d-4084-b141-40621947246e": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"sequenceflow": 2,
			"startevent": 1,
			"endevent": 1,
			"usertask": 1
		}
	}
}