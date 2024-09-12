
const cds = require('@sap/cds');
const express = require('express');
const multer = require('multer');
const reader = require('xlsx');
const { v4: uuidv4 } = require('uuid');
const path = require('path');
const fs = require('fs');

module.exports = cds.service.impl(async function () {
    const app = cds.app;

   
    const upload = multer({ dest: 'uploads/' });


    
    this.before('CREATE', 'Files', req => {
        console.log('Create called')
        console.log(JSON.stringify(req.data))
        req.data.url = `/odata/v4/company/Files(${req.data.ID})/content`
    })

    this.before('READ', 'Files', req => {
        //check content-type
        console.log('content-type: ', req.headers['content-type'])
    })

    
    
});