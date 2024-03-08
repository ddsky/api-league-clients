/*
API League

Testing MathAPIService

*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech);

package apileague

import (
	"context"
	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
	"testing"
	openapiclient "github.com/ddsky/api-league-clients/tree/master/go/"
)

func Test_apileague_MathAPIService(t *testing.T) {

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)

	t.Run("Test MathAPIService ConvertUnits", func(t *testing.T) {

		t.Skip("skip test")  // remove to run test

		resp, httpRes, err := apiClient.MathAPI.ConvertUnits(context.Background()).Execute()

		require.Nil(t, err)
		require.NotNil(t, resp)
		assert.Equal(t, 200, httpRes.StatusCode)

	})

}
