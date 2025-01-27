// Copyright (C) 2024, Ava Labs, Inc. All rights reserved.
// See the file LICENSE for licensing terms.

package controller

import "github.com/ava-labs/hypersdk/vm"

const Namespace = "controller"

func With() vm.Option {
	return vm.NewOption(Namespace, func(v *vm.VM, _ []byte) error {
		vm.WithControllerAPIs(jsonRPCServerFactory{})(v)
		return nil
	})
}
