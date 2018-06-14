import React from 'react'
import { Redirect } from 'react-router-dom'
import { isAuthenticated } from '../FakeAuth'

const Dashboard =()=> {
    if (isAuthenticated()) {
        return <h3>Good job buddy! You logged in!</h3>
    } else {
        return <Redirect to="/login" />
    }
}

export default Dashboard;
