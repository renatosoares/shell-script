#!/bin/bash

# Function to disable and re-enable swap, showing memory usage before and after
swap_refresh() {
    # Display memory usage before refreshing swap
    echo "Checking memory usage before swap refresh..."
    free -h
    echo ""

    # Disable all swap devices/files
    echo "Disabling swap..."
    sudo swapoff -a
    echo "Swap disabled."

    # Wait a few seconds to allow the system to stabilize
    echo "Waiting 5 seconds..."
    sleep 5

    # Re-enable all swap devices/files
    echo "Re-enabling swap..."
    sudo swapon -a
    echo "Swap re-enabled."

    # Display memory usage after refreshing swap
    echo ""
    echo "Checking memory usage after swap refresh..."
    free -h
}