const functions = require("firebase-functions");

const { initializeApp } = require('firebase-admin/app');
const { getFirestore, Timestamp, FieldValue } = require('firebase-admin/firestore');
initializeApp();

const db = getFirestore();

exports.createUserDocs = functions.auth.user().onCreate((data,context) => {
    const uid = data.uid;
    const email = data.email;
    const userDocRef = db.collection('users').doc(uid);
    const exDocRef = db.collection('users').doc(uid).collection('extensions');
    const friendshipsDocRef = exDocRef.doc('friendships');
    const stringsDocRef = exDocRef.doc('stringEntries');
    const matchesDocRef = exDocRef.doc('matches');

    const userDocData = {
        emailAddress: email,
        personId: uid,
        updated: context.timestamp
    };

    const friendshipsDocData = {
        count: 0,
        friendsCount: 0,
        sentRequestsCount: 0,
        pendingRequestsCount: 0,
        personId: uid,
        updated: context.timestamp,
        friendships: []
    };

    const matchesDocData = {
        personId: uid,
        matches: [],
        updated: context.timestamp
    };

    const stringsDocData = {
        count: 0,
        updated: context.timestamp,
        stringEntries: [],
        personID: uid
    };

    try {
        userDocRef.set(userDocData);
        friendshipsDocRef.set(friendshipsDocData);
        stringsDocRef.set(stringsDocData);
        matchesDocRef.set(matchesDocData);
        return;
    } catch (e) {
        return functions.auth.HttpsError('invalid-argument')
    }
  });