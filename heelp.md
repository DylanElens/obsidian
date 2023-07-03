<template>
    <div class="text-gray-800">
        <div class="flex justify-end px-2">
            <label class="flex items-center">
                <span class="w-6 border-2 border-gray-800 rounded-full flex mb-0 mr-2"
                    :class="[showCompleted ? 'bg-gray-800 justify-end' : null]">
                    <input type="checkbox" class="hidden" v-model="showCompleted" />
                    <span class="rounded-full m-px w-2 h-2" :class="[showCompleted ? 'bg-white' : 'bg-gray-800']"></span>
                </span>
                {{ trans("labels.archived") }}
            </label>
        </div>
        <ul class="flex my-4 px-2">
            <li class="w-1/3 border-b-4 uppercase text-center cursor-pointer" :class="[
                tab.focus
                    ? 'border-blue-500 font-semibold'
                    : 'border-light-gray',
            ]" v-for="(tab, tabName) in tabs" @click="focusTab(tabName)">
                {{ trans(tab.title) }}
            </li>
        </ul>
        <div v-if="selectedTab.name === 'purchaseAgreements'" class="p-2" ref="purchaseAgreementsList">
            <p v-if="!purchaseAgreements.length">
                {{ trans("db.no-purchase-agreements") }}
            </p>
            <div v-else v-for="(pa, rowIndex) in purchaseAgreements.filter(
                (i) => i.completed === showCompleted
            )" @click="removeRowFocus(rowIndex)" class="mb-4 text-sm rounded transition ease-in-out duration-700">
                <div class="bg-light-gray rounded-tl rounded-tr flex justify-between items-center py-2 px-4">
                    <span class="flex items-center">
                        <svg v-if="pa.user_type === 'buyer'" class="w-auto h-6 mr-2 fill-current"
                            xmlns="http://www.w3.org/2000/svg" viewBox="0 0 64 64">
                            <g clip-path="url(#clip0)">
                                <path
                                    d="M.2 58.306c.398-2.002 1.594-3.203 2.99-4.605l7.178-7.207c2.193-2.202 4.187-4.404 6.38-6.606 1.993-2.002 3.788-4.004 5.782-5.805 1.395-1.402 3.19-1.802 5.183-1.202.4 0 .4 0 .798-.2 1.196-1.401 2.592-2.602 3.987-4.004-.398-.4-.797-.8-1.196-1.401l-4.187-4.204c-.2-.2-.598-.4-.797-.2-1.994 1-4.187.4-5.782-1.201-1.396-1.602-1.795-4.004-.598-5.806.598-1 1.395-1.601 2.193-2.402 2.99-3.003 5.782-6.006 8.772-9.009 1.197-1.2 2.194-2.202 3.39-3.403 1.595-1.401 4.386-1.401 5.981 0 1.794 1.401 2.193 3.403 1.595 5.605v.2c-.598.601-.2 1.002.2 1.402a311.977 311.977 0 0011.165 11.811l2.99 3.003c.2.2.399.2.598.2 2.991-1.401 6.38.2 7.178 3.604v1.601c-.2.4-.2 1.001-.598 1.401-.598.801-1.396 1.802-2.193 2.603-3.788 4.004-7.577 7.807-11.365 11.611-.598.6-1.395 1.401-2.193 1.602-1.794.6-3.988.2-5.383-1.402-1.396-1.601-1.794-3.603-.798-5.605.2-.4.2-.6-.199-.8l-3.39-3.404-2.193-2.202c-.199.2-.199.2-.398.2-1.396 1.401-2.792 3.003-4.387 4.404-.199.2-.199.4-.199.6 0 1.602-.598 3.004-1.595 4.205-6.779 6.806-13.358 13.613-20.137 20.42-.598.6-1.196 1-1.794 1.4-1.795 1.002-4.387.401-5.782-1.2C.598 61.508.199 60.307 0 59.306v-1.001h.2z" />
                            </g>
                            <defs>
                                <clipPath id="clip0">
                                    <path fill="#fff" d="M0 0h64v64H0z" />
                                </clipPath>
                            </defs>
                        </svg>
                        <svg v-else class="w-auto h-6 mr-2 fill-current" xmlns="http://www.w3.org/2000/svg"
                            viewBox="0 0 64 64">
                            <path
                                d="M52.132 45.611H60V41.85h-7.868v3.761zM52 28.686h8v-3.761h-8v3.761zm0 9.403h8v-5.642h-8v5.642zm6.06-20.105c.37.6.873 1.42 1.785 2.31.078.077.112.109.04.274-.055.12-.157.468-.278.596h-5.66c-.26-.399 0-1.062 0-1.564 0-1.453 1.257-2.634 2.8-2.634.671 0 .754.102 1.313 1.018zM48 28.686H16v-3.761h32v3.761zM16 38.09h32v-5.642H16v5.642zm32.007 7.522H30c-1.125-.701-3.31-1.536-4.528-1.504-1.123.044-2.716.88-3.472 1.504l-6-.001v-3.76h32.007v3.761zm-21.899 5.802c-.532-.107-1.076-.22-1.625-.298-.189-.028-.76-.11-1.102-.893-.39-.899-.248-2.25.314-2.957.4-.51 1.063-.805 1.862-.837.045-.002.091-.002.136-.002.841 0 1.714.29 2.47.82 1.581 1.107 2.15 2.916 1.266 4.034-.505.631-1.395.528-3.32.133zm-8.79.315c0-1.253 1.393-2.275 3.105-2.275.23 0 .447.042.663.078.045.506.142 1 .333 1.446a3.45 3.45 0 001.727 1.791c-.515.73-1.528 1.24-2.723 1.24-1.712 0-3.104-1.023-3.104-2.28zm-.415-33.16a3.87 3.87 0 012.081-.606c.108 0 .21.02.314.028.578.672 1.267 1.23 2.053 1.598.326.151.659.257.992.34.167.32-.404.875-.343 1.236h-6l.903-2.596zm5.73-6.486c.271 0 .538.026.79.076.92.181 1.579.658 1.956 1.417.121.245.214.494.286.743.2.671.23 1.35.072 1.969-.197.769-.654 1.347-1.29 1.625-.502.224-1.09.236-1.687.058a3.36 3.36 0 01-.466-.17c-.835-.386-1.54-1.097-1.988-1.994-1.178-2.369-.402-2.95.488-3.345a4.625 4.625 0 011.839-.379zm5.175 4.575l.031.026a4.936 4.936 0 00-.229 1.423c0 1.042.327 2.225.86 3.058h-2.906c-.217-.35-.371-.958-.445-1.375.076-.026.154-.038.226-.071 1.231-.54 2.102-1.596 2.452-2.965.008-.032.002-.064.01-.096zm5.859-3.887c0 .86-.43 1.624-1.09 2.134a3.047 3.047 0 01-1.864.64c-1.316 0-2.42-.822-2.8-1.943a2.595 2.595 0 01-.15-.831c0-1.532 1.324-2.778 2.95-2.778 1.63 0 2.954 1.246 2.954 2.778zm3.631 5.336c0 1.163-.608 2.408-1.53 3.058h-4.51c-.922-.65-1.528-1.895-1.528-3.058 0-.226.044-.44.088-.654.293.05.59.084.895.084a5.189 5.189 0 003.214-1.108 4.986 4.986 0 001.272-1.486c1.237.583 2.1 1.773 2.1 3.164zM46 19.283c0 .576-.111 1.435-.422 1.88h-5.056c-.312-.445-.522-1.304-.522-1.88 0-1.57 1.38-2.743 3.047-2.743 1.672 0 2.953 1.173 2.953 2.743zm-34 9.403H4v-3.761c5.206.094 7.873.094 8 0v3.761zM4 38.09h8v-5.642H4v5.642zm0 7.522h8V41.85l-8 .055v3.706zm6-24.447H6c.256-1.124.256-1.88 2-1.88 1.333 0 2 .626 2 1.88zm52 0c.189-.74-.047-1.684-.632-2.255-.73-.714-1.123-1.353-1.468-1.92-.608-.99-1.233-2.015-3.153-2.015-2.136 0-3.937 1.295-4.615 3.084V16.54H47.19a5.242 5.242 0 00-4.143-1.993 5.242 5.242 0 00-3.951 1.781c-.551-1.516-1.772-2.74-3.338-3.349.004-.07 0-1.146 0-1.218C35.758 9.131 32.795 8 30 8c-2.183 0-3.32 1.313-4.032 3.136-.593-.448-1.16-1.096-1.968-1.255-1.284-.251-2.876.237-4.103.775-1.578.697-3.074 2.211-1.758 5.39a6.114 6.114 0 00-1.68.494h-5.383v1.396a4.874 4.874 0 00-2.914-.97c-2.445 0-3.89 1.966-4.162 4.198H0v28.208l15.886.282c-.424.618-.686 1.32-.686 2.074C15.2 54.083 17.54 56 20.422 56c2.204 0 4.062-1.132 4.82-2.716.138.026.278.048.414.076.854.175 1.759.36 2.621.36 1.076 0 2.085-.288 2.846-1.249.648-.816.97-2.09.876-3.099h32V21.164h-2z" />
                        </svg>
                        {{ pa.user_type_phrase }}
                    </span>
                    <span>{{ trans("db.pa-serial-prefix") }} #{{
                        pa.serial
                    }}</span>
                </div>
                <div class="bg-white rounded-bl rounded-br p-4 flex">
                    <div class="flex flex-col items-center leading-none font-semibold">
                        <span v-for="(fun, i) in pa.delivery_date.split(' ')" :class="['text-3xl', 'text-lg', 'text-sm font-normal'][
                            i
                            ]
                            ">{{ fun }}</span>
                    </div>
                    <div class="ml-4">
                        <h3 class="text-2xl">{{ pa.bulb }}</h3>
                        <p class="lowercase">
                            <span>{{ pa.price }}</span>
                            <span class="ml-2"><b>{{ pa.quantity }}</b>
                                {{ trans(`db.${pa.uom}`) }}</span>
                        </p>
                        <p class="lowercase">
                            <span>{{ trans("db.size") }}
                                <b>{{ pa.size }}</b></span>
                            <span class="ml-2">{{ trans("db.class") }} {{ pa.class }}</span>
                        </p>
                    </div>
                    <div class="ml-auto flex">
                        <div class="flex items-center">
                            <p :style="{
                                color: pa.status.color,
                                borderColor: pa.status.color,
                            }"
                                class="w-64 py-2 px-4 border-2 rounded-xl text-center capitalize flex justify-center items-center">
                                <icon :name="pa.status.icon"></icon>
                                <span class="ml-2">{{
                                    pa.status.message
                                }}</span>
                            </p>
                        </div>
                    </div>
                    <ul class="pl-4 w-56 flex flex-col justify-center">
                        <li v-for="link in pa.links">
                            <a :href="link.href" :title="link.title" class="flex items-center">
                                <span v-if="link.icon === 'purchase-agreement'"><svg class="w-auto h-4 mr-2 fill-current"
                                        xmlns="http://www.w3.org/2000/svg" viewBox="0 0 48 64">
                                        <path
                                            d="M28 17V0H3C1.337 0 0 1.337 0 3v58c0 1.663 1.337 3 3 3h42c1.663 0 3-1.337 3-3V20H31c-1.65 0-3-1.35-3-3zm9.556 26.42L25.504 55.382a2.131 2.131 0 01-3.005 0L10.446 43.42C9.178 42.161 10.068 40 11.852 40H20V30a2 2 0 012-2h4a2 2 0 012 2v10h8.148c1.784 0 2.674 2.161 1.408 3.42zm9.569-30.295L34.888.875A2.998 2.998 0 0032.763 0H32v16h16v-.762a2.99 2.99 0 00-.875-2.113z" />
                                    </svg></span>
                                <span v-if="link.icon === 'proforma'"><svg class="w-auto h-4 mr-2 fill-current"
                                        xmlns="http://www.w3.org/2000/svg" viewBox="0 0 48 64">
                                        <path
                                            d="M37 50H27a1 1 0 00-1 1v2a1 1 0 001 1h10a1 1 0 001-1v-2a1 1 0 00-1-1zM10 30v12a2 2 0 002 2h24a2 2 0 002-2V30a2 2 0 00-2-2H12a2 2 0 00-2 2zm4 2h20v8H14v-8zm32.229-19.752L35.743 1.762A6 6 0 0031.505 0H6C2.688.013 0 2.7 0 6.011v51.99A6.001 6.001 0 005.999 64H41.99C45.304 64 48 61.312 48 58.001V16.496a6.037 6.037 0 00-1.771-4.248zm-14.235-5.75l9.511 9.51h-9.511v-9.51zM42 58.002H5.999V6.011h19.996V19.01a2.992 2.992 0 003 2.998H42v35.994zM11 14h10a1 1 0 001-1v-2a1 1 0 00-1-1H11a1 1 0 00-1 1v2a1 1 0 001 1zm0 8h10a1 1 0 001-1v-2a1 1 0 00-1-1H11a1 1 0 00-1 1v2a1 1 0 001 1z" />
                                    </svg></span>
                                <span v-if="link.icon === 'invoice'"><svg class="w-auto h-4 mr-2 fill-current"
                                        xmlns="http://www.w3.org/2000/svg" viewBox="0 0 48 64">
                                        <path
                                            d="M36 32H12v8h24v-8zm11.125-18.875L34.888.875A2.998 2.998 0 0032.763 0H32v16h16v-.762a2.99 2.99 0 00-.875-2.113zM28 17V0H3C1.337 0 0 1.337 0 3v58c0 1.663 1.337 3 3 3h42c1.663 0 3-1.337 3-3V20H31c-1.65 0-3-1.35-3-3zM8 9a1 1 0 011-1h10a1 1 0 011 1v2a1 1 0 01-1 1H9a1 1 0 01-1-1V9zm0 8a1 1 0 011-1h10a1 1 0 011 1v2a1 1 0 01-1 1H9a1 1 0 01-1-1v-2zm32 38a1 1 0 01-1 1H29a1 1 0 01-1-1v-2a1 1 0 011-1h10a1 1 0 011 1v2zm0-25v12a2 2 0 01-2 2H10a2 2 0 01-2-2V30a2 2 0 012-2h28a2 2 0 012 2z" />
                                    </svg></span>
                                {{ link.title }}
                            </a>
                        </li>
                        <li v-if="pa.complaint_url" class="mt-2">
                            <button type="button" @click.stop="showModal('complaintModal', pa)" class="text-left pl-6">
                                {{
                                    trans("buttons.show-submit-complaint-modal")
                                }}
                            </button>
                        </li>
                        <li v-if="pa.claim_url" class="mt-2">
                            <button type="button" @click.stop="showModal('claimModal', pa)" class="text-left pl-6">
                                {{ trans("buttons.show-submit-claim-modal") }}
                            </button>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div v-if="selectedTab.name === 'invoices'" class="p-2" ref="invoicesList">
            <p v-if="!combinedInvoices.length">
                {{ trans("db.no-combined-invoices") }}
            </p>
            <div v-else v-for="(invoice, rowIndex) in combinedInvoices.filter(
                (i) => i.completed === this.showCompleted
            )" @click="removeRowFocus(rowIndex)" class="mb-4 text-sm rounded">
                <div class="bg-light-gray rounded-tl rounded-tr flex justify-between items-center py-2 px-4">
                    <span class="flex items-center">
                        <svg v-if="invoice.user_type === 'buyer'" class="w-auto h-6 mr-2 fill-current"
                            xmlns="http://www.w3.org/2000/svg" viewBox="0 0 64 64">
                            <g clip-path="url(#clip0)">
                                <path
                                    d="M.2 58.306c.398-2.002 1.594-3.203 2.99-4.605l7.178-7.207c2.193-2.202 4.187-4.404 6.38-6.606 1.993-2.002 3.788-4.004 5.782-5.805 1.395-1.402 3.19-1.802 5.183-1.202.4 0 .4 0 .798-.2 1.196-1.401 2.592-2.602 3.987-4.004-.398-.4-.797-.8-1.196-1.401l-4.187-4.204c-.2-.2-.598-.4-.797-.2-1.994 1-4.187.4-5.782-1.201-1.396-1.602-1.795-4.004-.598-5.806.598-1 1.395-1.601 2.193-2.402 2.99-3.003 5.782-6.006 8.772-9.009 1.197-1.2 2.194-2.202 3.39-3.403 1.595-1.401 4.386-1.401 5.981 0 1.794 1.401 2.193 3.403 1.595 5.605v.2c-.598.601-.2 1.002.2 1.402a311.977 311.977 0 0011.165 11.811l2.99 3.003c.2.2.399.2.598.2 2.991-1.401 6.38.2 7.178 3.604v1.601c-.2.4-.2 1.001-.598 1.401-.598.801-1.396 1.802-2.193 2.603-3.788 4.004-7.577 7.807-11.365 11.611-.598.6-1.395 1.401-2.193 1.602-1.794.6-3.988.2-5.383-1.402-1.396-1.601-1.794-3.603-.798-5.605.2-.4.2-.6-.199-.8l-3.39-3.404-2.193-2.202c-.199.2-.199.2-.398.2-1.396 1.401-2.792 3.003-4.387 4.404-.199.2-.199.4-.199.6 0 1.602-.598 3.004-1.595 4.205-6.779 6.806-13.358 13.613-20.137 20.42-.598.6-1.196 1-1.794 1.4-1.795 1.002-4.387.401-5.782-1.2C.598 61.508.199 60.307 0 59.306v-1.001h.2z" />
                            </g>
                            <defs>
                                <clipPath id="clip0">
                                    <path fill="#fff" d="M0 0h64v64H0z" />
                                </clipPath>
                            </defs>
                        </svg>
                        <svg v-else class="w-auto h-6 mr-2 fill-current" xmlns="http://www.w3.org/2000/svg"
                            viewBox="0 0 64 64">
                            <path
                                d="M52.132 45.611H60V41.85h-7.868v3.761zM52 28.686h8v-3.761h-8v3.761zm0 9.403h8v-5.642h-8v5.642zm6.06-20.105c.37.6.873 1.42 1.785 2.31.078.077.112.109.04.274-.055.12-.157.468-.278.596h-5.66c-.26-.399 0-1.062 0-1.564 0-1.453 1.257-2.634 2.8-2.634.671 0 .754.102 1.313 1.018zM48 28.686H16v-3.761h32v3.761zM16 38.09h32v-5.642H16v5.642zm32.007 7.522H30c-1.125-.701-3.31-1.536-4.528-1.504-1.123.044-2.716.88-3.472 1.504l-6-.001v-3.76h32.007v3.761zm-21.899 5.802c-.532-.107-1.076-.22-1.625-.298-.189-.028-.76-.11-1.102-.893-.39-.899-.248-2.25.314-2.957.4-.51 1.063-.805 1.862-.837.045-.002.091-.002.136-.002.841 0 1.714.29 2.47.82 1.581 1.107 2.15 2.916 1.266 4.034-.505.631-1.395.528-3.32.133zm-8.79.315c0-1.253 1.393-2.275 3.105-2.275.23 0 .447.042.663.078.045.506.142 1 .333 1.446a3.45 3.45 0 001.727 1.791c-.515.73-1.528 1.24-2.723 1.24-1.712 0-3.104-1.023-3.104-2.28zm-.415-33.16a3.87 3.87 0 012.081-.606c.108 0 .21.02.314.028.578.672 1.267 1.23 2.053 1.598.326.151.659.257.992.34.167.32-.404.875-.343 1.236h-6l.903-2.596zm5.73-6.486c.271 0 .538.026.79.076.92.181 1.579.658 1.956 1.417.121.245.214.494.286.743.2.671.23 1.35.072 1.969-.197.769-.654 1.347-1.29 1.625-.502.224-1.09.236-1.687.058a3.36 3.36 0 01-.466-.17c-.835-.386-1.54-1.097-1.988-1.994-1.178-2.369-.402-2.95.488-3.345a4.625 4.625 0 011.839-.379zm5.175 4.575l.031.026a4.936 4.936 0 00-.229 1.423c0 1.042.327 2.225.86 3.058h-2.906c-.217-.35-.371-.958-.445-1.375.076-.026.154-.038.226-.071 1.231-.54 2.102-1.596 2.452-2.965.008-.032.002-.064.01-.096zm5.859-3.887c0 .86-.43 1.624-1.09 2.134a3.047 3.047 0 01-1.864.64c-1.316 0-2.42-.822-2.8-1.943a2.595 2.595 0 01-.15-.831c0-1.532 1.324-2.778 2.95-2.778 1.63 0 2.954 1.246 2.954 2.778zm3.631 5.336c0 1.163-.608 2.408-1.53 3.058h-4.51c-.922-.65-1.528-1.895-1.528-3.058 0-.226.044-.44.088-.654.293.05.59.084.895.084a5.189 5.189 0 003.214-1.108 4.986 4.986 0 001.272-1.486c1.237.583 2.1 1.773 2.1 3.164zM46 19.283c0 .576-.111 1.435-.422 1.88h-5.056c-.312-.445-.522-1.304-.522-1.88 0-1.57 1.38-2.743 3.047-2.743 1.672 0 2.953 1.173 2.953 2.743zm-34 9.403H4v-3.761c5.206.094 7.873.094 8 0v3.761zM4 38.09h8v-5.642H4v5.642zm0 7.522h8V41.85l-8 .055v3.706zm6-24.447H6c.256-1.124.256-1.88 2-1.88 1.333 0 2 .626 2 1.88zm52 0c.189-.74-.047-1.684-.632-2.255-.73-.714-1.123-1.353-1.468-1.92-.608-.99-1.233-2.015-3.153-2.015-2.136 0-3.937 1.295-4.615 3.084V16.54H47.19a5.242 5.242 0 00-4.143-1.993 5.242 5.242 0 00-3.951 1.781c-.551-1.516-1.772-2.74-3.338-3.349.004-.07 0-1.146 0-1.218C35.758 9.131 32.795 8 30 8c-2.183 0-3.32 1.313-4.032 3.136-.593-.448-1.16-1.096-1.968-1.255-1.284-.251-2.876.237-4.103.775-1.578.697-3.074 2.211-1.758 5.39a6.114 6.114 0 00-1.68.494h-5.383v1.396a4.874 4.874 0 00-2.914-.97c-2.445 0-3.89 1.966-4.162 4.198H0v28.208l15.886.282c-.424.618-.686 1.32-.686 2.074C15.2 54.083 17.54 56 20.422 56c2.204 0 4.062-1.132 4.82-2.716.138.026.278.048.414.076.854.175 1.759.36 2.621.36 1.076 0 2.085-.288 2.846-1.249.648-.816.97-2.09.876-3.099h32V21.164h-2z" />
                        </svg>
                        {{ invoice.user_type_phrase }}
                    </span>
                    <span>{{ invoice.payment_type }} #{{ invoice.serial }}</span>
                </div>
                <div class="bg-white rounded-bl rounded-br p-4">
                    <div class="flex">
                        <div class="w-4/12 flex items-center justify-between pr-8">
                            <span class="text-lg leading-none font-semibold">{{
                                invoice.created_at
                            }}</span>
                            <h3 class="text-xl">{{ invoice.total }}</h3>
                        </div>
                        <div class="w-4/12 pl-4 flex items-center" v-if="invoice.pa_count">
                            <button type="button" class="text-lg flex items-center"
                                @click.stop="toggleInvoiceItems(invoice)">
                                {{ invoice.pa_count }}
                                <svg class="w-auto h-4 ml-2 fill-current" xmlns="http://www.w3.org/2000/svg"
                                    viewBox="0 0 64 64">
                                    <g clip-path="url(#clip0)">
                                        <path
                                            d="M29.513 49.045L1.03 22.645c-1.373-1.273-1.373-3.338 0-4.61l3.322-3.08c1.372-1.271 3.594-1.274 4.969-.005L32 35.871 54.678 14.95c1.375-1.269 3.597-1.266 4.969.005l3.322 3.08c1.373 1.272 1.373 3.337 0 4.61l-28.483 26.4c-1.373 1.273-3.6 1.273-4.974 0z" />
                                    </g>
                                    <defs>
                                        <clipPath id="clip0">
                                            <path fill="#fff" d="M0 0h64v64H0z" />
                                        </clipPath>
                                    </defs>
                                </svg>
                            </button>
                        </div>
                        <div class="ml-auto flex items-center group">
                            <a v-for="link in invoice.links" :href="link.href" :title="link.title">
                                <svg v-if="link.icon === 'invoice'" class="w-auto h-6 fill-current"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 64 64">
                                    <path
                                        d="M44 32H20v8h24v-8zm11.125-18.875L42.888.875A2.998 2.998 0 0040.763 0H40v16h16v-.762a2.99 2.99 0 00-.875-2.113zM36 17V0H11C9.338 0 8 1.337 8 3v58c0 1.663 1.338 3 3 3h42c1.663 0 3-1.337 3-3V20H39c-1.65 0-3-1.35-3-3zM16 9a1 1 0 011-1h10a1 1 0 011 1v2a1 1 0 01-1 1H17a1 1 0 01-1-1V9zm0 8a1 1 0 011-1h10a1 1 0 011 1v2a1 1 0 01-1 1H17a1 1 0 01-1-1v-2zm32 38a1 1 0 01-1 1H37a1 1 0 01-1-1v-2a1 1 0 011-1h10a1 1 0 011 1v2zm0-25v12a2 2 0 01-2 2H18a2 2 0 01-2-2V30a2 2 0 012-2h28a2 2 0 012 2z" />
                                </svg>
                                <svg v-if="link.icon === 'proforma'" class="w-auto h-6 fill-current"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 64 64">
                                    <path
                                        d="M45 50H35a1 1 0 00-1 1v2a1 1 0 001 1h10a1 1 0 001-1v-2a1 1 0 00-1-1zM18 30v12a2 2 0 002 2h24a2 2 0 002-2V30a2 2 0 00-2-2H20a2 2 0 00-2 2zm4 2h20v8H22v-8zm32.229-19.752L43.743 1.762A6 6 0 0039.505 0H14C10.687.013 8 2.7 8 6.011v51.99A6.001 6.001 0 0013.999 64H49.99C53.304 64 56 61.312 56 58.001V16.496a6.037 6.037 0 00-1.771-4.248zm-14.235-5.75l9.511 9.51h-9.511v-9.51zM50 58.002H13.999V6.011h19.996V19.01a2.992 2.992 0 003 2.998H50v35.994zM19 14h10a1 1 0 001-1v-2a1 1 0 00-1-1H19a1 1 0 00-1 1v2a1 1 0 001 1zm0 8h10a1 1 0 001-1v-2a1 1 0 00-1-1H19a1 1 0 00-1 1v2a1 1 0 001 1z" />
                                </svg>
                            </a>
                            <a v-if="invoice.payment_link" :href="invoice.payment_link" :style="{
                                backgroundColor: invoice.status.color,
                                borderColor: invoice.status.color,
                            }"
                                class="flex items-center justify-center ml-4 w-56 py-2 px-4 border-2 rounded-xl text-white hover:bg-blue-600 transition-colors duration-300 text-center capitalize">
                                <icon :name="invoice.status.icon"></icon>
                                <span class="ml-2">{{
                                    invoice.status.message
                                }}</span>
                            </a>
                            <p v-else :style="{
                                        color: invoice.status.color,
                                        borderColor: invoice.status.color,
                                    }"
                                class="flex items-center justify-center ml-4 w-56 py-2 px-4 border-2 rounded-xl text-center capitalize">
                                <icon :name="invoice.status.icon"></icon>
                                <span class="ml-2">{{
                                    invoice.status.message
                                }}</span>
                            </p>
                        </div>
                    </div>
                    <div class="flex" v-if="showInvoiceItems[invoice.id]">
                        <ul class="w-full text-gray-600">
                            <li v-for="item in invoice.items" class="flex">
                                <span class="w-4/12 text-right pr-8">{{
                                    item.total
                                }}</span>
                                <span v-if="item.pa_id" class="pl-4 w-2/12 cursor-pointer" @click.stop="
                                    goToPurchaseAgreement(item.pa_id)
                                    ">
                                    #{{ item.pa_serial }}
                                </span>
                                <span v-if="!item.pa_id" class="pl-4 w-2/12">{{
                                    trans("db.partner-fee")
                                }}</span>
                                <span v-if="item.status">{{
                                    item.status
                                }}</span>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div v-if="selectedTab.name === 'complaints'" class="p-2" :ref="`complaintsList`">
            <p v-if="!complaints.length">{{ trans("db.no-complaints") }}</p>
            <div v-else v-for="(complaint, rowIndex) in complaints.filter(
                        (i) => i.completed === this.showCompleted
                    )" @click="removeRowFocus(rowIndex)" class="mb-4 text-sm rounded">
                <div class="bg-light-gray rounded-tl rounded-tr flex justify-between items-center py-2 px-4">
                    <span class="flex items-center">{{
                        complaint.user_type_phrase
                    }}</span>
                    <span>{{ trans("db.pa-serial-prefix") }} #{{
                        complaint.pa.serial
                    }}</span>
                </div>
                <div class="bg-white rounded-bl rounded-br p-4">
                    <div class="flex items-center">
                        <span class="w-2/12 text-lg leading-none font-semibold">{{ complaint.created_at }}</span>
                        <div v-if="complaint.resolved_at === null" class="w-7/12 flex items-center">
                            <p>"{{ complaint.about }}"</p>
                            <span class="px-4 py-2 relative group">
                                <svg class="w-auto h-4 fill-current" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 64 64">
                                    <g clip-path="url(#clip0)">
                                        <path
                                            d="M18.006 26c-2.212 0-4 1.788-4 4 0 2.212 1.788 4 4 4 2.212 0 4-1.788 4-4 0-2.212-1.788-4-4-4zm13.998 0c-2.212 0-4 1.788-4 4 0 2.212 1.788 4 4 4 2.212 0 4-1.788 4-4 0-2.212-1.788-4-4-4zm13.998 0c-2.212 0-4 1.788-4 4 0 2.212 1.788 4 4 4 2.213 0 4-1.788 4-4 0-2.212-1.787-4-4-4zM32.004 4C14.331 4 .008 15.637.008 30c0 5.95 2.487 11.4 6.612 15.788-1.862 4.925-5.737 9.1-5.8 9.15A3 3 0 003.009 60c7.686 0 13.748-3.212 17.385-5.788A38.596 38.596 0 0032.004 56C49.677 56 64 44.362 64 30 64 15.637 49.677 4 32.004 4zm0 46c-3.337 0-6.636-.513-9.799-1.513l-2.837-.9-2.437 1.725c-1.787 1.263-4.237 2.675-7.186 3.626.912-1.513 1.8-3.213 2.487-5.026l1.325-3.512-2.575-2.725C8.72 39.263 6.008 35.275 6.008 30c0-11.025 11.66-20 25.996-20 14.336 0 25.997 8.975 25.997 20S46.34 50 32.004 50z" />
                                    </g>
                                    <defs>
                                        <clipPath id="clip0">
                                            <path fill="#fff" d="M0 0h64v64H0z" />
                                        </clipPath>
                                    </defs>
                                </svg>
                                <tooltip-right>{{
                                    complaint.comment
                                }}</tooltip-right>
                            </span>
                        </div>
                        <div v-else class="w-7/12 flex items-center">
                            <p>{{ complaint.resolution }}</p>
                            <span class="px-4 py-2 relative group">
                                <svg class="w-auto h-4 fill-current" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 64 64">
                                    <path
                                        d="M32 4C14.325 4 0 15.637 0 30c0 6.2 2.675 11.875 7.125 16.337C5.562 52.637.338 58.25.275 58.313A.994.994 0 00.087 59.4c.163.375.513.6.913.6 8.287 0 14.5-3.975 17.575-6.425A38.122 38.122 0 0032 56c17.675 0 32-11.638 32-26C64 15.637 49.675 4 32 4zM16 34c-2.213 0-4-1.788-4-4 0-2.212 1.787-4 4-4 2.212 0 4 1.788 4 4 0 2.212-1.788 4-4 4zm16 0c-2.212 0-4-1.788-4-4 0-2.212 1.788-4 4-4 2.212 0 4 1.788 4 4 0 2.212-1.788 4-4 4zm16 0c-2.212 0-4-1.788-4-4 0-2.212 1.788-4 4-4 2.212 0 4 1.788 4 4 0 2.212-1.788 4-4 4z" />
                                </svg>
                                <tooltip-right>{{
                                    complaint.resolution_comment
                                }}</tooltip-right>
                            </span>
                        </div>
                        <div class="flex-1 flex items-center">
                            <p :style="{
                                        color: complaint.status.color,
                                        borderColor: complaint.status.color,
                                    }"
                                class="flex items-center justify-center ml-4 w-48 py-2 px-4 border-2 rounded-xl text-center capitalize">
                                <icon :name="complaint.status.icon"></icon>
                                <span class="ml-2">{{
                                    complaint.status.message
                                }}</span>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <modal ref="complaintModal" v-if="complaintModal.pa">
            <h2 class="secondary-title">
                {{ trans("headings.submit-complaint") }}
            </h2>
            <div class="flex mt-6">
                <div class="w-40">
                    <img :src="complaintModal.pa.offer_image" alt="offer image" />
                </div>
                <div class="ml-4">
                    <h3 class="text-xl">{{ complaintModal.pa.bulb }}</h3>
                    <ul class="text-sm mt-2">
                        <li>
                            <b>{{ complaintModal.pa.class }}</b>
                        </li>
                        <li>
                            {{ trans("db.size") }}
                            <b>{{ complaintModal.pa.size }}</b>
                        </li>
                        <li>
                            <b>{{ complaintModal.pa.quantity }}</b>
                            {{ trans(`db.${complaintModal.pa.uom}`) }}
                        </li>
                    </ul>
                </div>
            </div>
            <form class="font-raleway mt-4">
                <template v-for="(question, input_name) in complaintModal.questions">
                    <div class="pt-4">
                        <span>{{ question.text }}</span>
                        <div class="mt-2">
                            <label v-for="(option, i) in question.options" class="inline-flex items-center mb-0"
                                :class="[i > 0 ? 'ml-6' : null]">
                                <input type="radio" class="form-radio" :name="input_name" :value="option.value"
                                    v-model="question.answer" v-validate="'required'"
                                    :data-vv-as="trans(`db.${input_name}`)" />
                                <span class="ml-2">{{ option.label }}</span>
                            </label>
                            <div class="text-red-500 mt-4 text-sm" v-show="errors.has(input_name)"
                                v-text="errors.first(input_name)"></div>
                        </div>
                    </div>
                </template>
                <label class="block pt-4">
                    <span>{{ complaintModal.text.label }}</span>
                    <textarea id="complaint-text" name="text" v-model="complaintModal.text.value"
                        :placeholder="complaintModal.text.placeholder"
                        class="form-textarea mt-2 block w-full border-b-2 border-b-gray-700" cols="30" rows="3"
                        v-validate="'required'" :data-vv-as="trans('db.complaint-text')"></textarea>
                </label>
                <div class="text-red-500 mt-4 text-sm" v-show="errors.has('text')" v-text="errors.first('text')"></div>
                <div class="mt-6">
                    <button type="button"
                        class="py-2 w-48 font-semibold bg-green-kuukz-500 text-white rounded-4 border-b-4 border-gray-400 transition-colors duration-300 hover:bg-green-kuukz-600"
                        @click.stop="submitModalForm('complaintModal')" :disabled="this.formSubmitDisabled">
                        {{ trans("buttons.submit-complaint") }}
                    </button>
                    <button type="button"
                        class="font-semibold border-b-4 border-gray-300 transition-colors duration-300 hover:border-gray-400 ml-4"
                        @click.stop="$refs.complaintModal.hide()">
                        {{ trans("buttons.cancel") }}
                    </button>
                </div>
            </form>
        </modal>
        <modal ref="claimModal" v-if="claimModal.pa">
            <h2 class="secondary-title">
                {{ trans("headings.submit-claim") }}
            </h2>
            <div class="flex mt-6">
                <div class="w-40">
                    <img :src="claimModal.pa.offer_image" alt="offer image" />
                </div>
                <div class="ml-4">
                    <h3 class="text-xl">{{ claimModal.pa.bulb }}</h3>
                    <ul class="text-sm mt-2">
                        <li>
                            <b>{{ claimModal.pa.class }}</b>
                        </li>
                        <li>
                            {{ trans("db.size") }}
                            <b>{{ claimModal.pa.size }}</b>
                        </li>
                        <li>
                            <b>{{ claimModal.pa.quantity }}</b>
                            {{ trans(`db.${claimModal.pa.uom}`) }}
                        </li>
                        <li v-if="claimModal.pa.delivered_quantity > 0">
                            <b>{{ trans("db.pa-delivered-quantity") }}</b>
                            {{ claimModal.pa.delivered_quantity }}
                        </li>
                    </ul>
                </div>
            </div>
            <form class="font-raleway mt-4">
                <label class="block pt-4">
                    <span>{{ claimModal.percent.label }}</span>
                    <input class="form-input mt-1 block w-full" type="number" step="0.1" min="0.1" :max="15" name="percent"
                        v-model="claimModal.percent.value" :placeholder="claimModal.percent.placeholder"
                        v-validate="`required|max:15`" :data-vv-as="trans('db.claim-percent')" />
                </label>
                <div class="text-red-500 mt-4 text-sm" v-show="errors.has('percent')" v-text="errors.first('percent')">
                </div>
                <label class="block pt-4">
                    <span>{{ claimModal.text.label }}</span>
                    <textarea cols="30" rows="3" id="claim-text" name="text" v-model="claimModal.text.value"
                        :placeholder="claimModal.text.placeholder"
                        class="form-textarea mt-2 block w-full border-b-2 border-b-gray-700" v-validate="'required'"
                        :data-vv-as="trans('db.complaint-text')"></textarea>
                </label>
                <div class="text-red-500 mt-4 text-sm" v-show="errors.has('text')" v-text="errors.first('text')"></div>
                <div class="mt-6">
                    <button type="button"
                        class="py-2 w-48 font-semibold bg-green-kuukz-500 text-white rounded-4 border-b-4 border-gray-400 transition-colors duration-300 hover:bg-green-kuukz-600"
                        @click.stop="submitModalForm('claimModal')" :disabled="this.formSubmitDisabled">
                        {{ trans("buttons.submit-complaint") }}
                    </button>
                    <button type="button"
                        class="font-semibold border-b-4 border-gray-300 transition-colors duration-300 hover:border-gray-400 ml-4"
                        @click.stop="$refs.claimModal.hide()">
                        {{ trans("buttons.cancel") }}
                    </button>
                </div>
            </form>
        </modal>
        <notification ref="notification"></notification>
    </div>
</template>
<template>
    <div class="text-gray-800">
        <div class="flex justify-end px-2">
            <label class="flex items-center">
                <span class="w-6 border-2 border-gray-800 rounded-full flex mb-0 mr-2"
                    :class="[showCompleted ? 'bg-gray-800 justify-end' : null]">
                    <input type="checkbox" class="hidden" v-model="showCompleted" />
                    <span class="rounded-full m-px w-2 h-2" :class="[showCompleted ? 'bg-white' : 'bg-gray-800']"></span>
                </span>
                {{ trans("labels.archived") }}
            </label>
        </div>
        <ul class="flex my-4 px-2">
            <li class="w-1/3 border-b-4 uppercase text-center cursor-pointer" :class="[
                tab.focus
                    ? 'border-blue-500 font-semibold'
                    : 'border-light-gray',
            ]" v-for="(tab, tabName) in tabs" @click="focusTab(tabName)">
                {{ trans(tab.title) }}
            </li>
        </ul>
        <div v-if="selectedTab.name === 'purchaseAgreements'" class="p-2" ref="purchaseAgreementsList">
            <p v-if="!purchaseAgreements.length">
                {{ trans("db.no-purchase-agreements") }}
            </p>
            <div v-else v-for="(pa, rowIndex) in purchaseAgreements.filter(
                (i) => i.completed === showCompleted
            )" @click="removeRowFocus(rowIndex)" class="mb-4 text-sm rounded transition ease-in-out duration-700">
                <div class="bg-light-gray rounded-tl rounded-tr flex justify-between items-center py-2 px-4">
                    <span class="flex items-center">
                        <svg v-if="pa.user_type === 'buyer'" class="w-auto h-6 mr-2 fill-current"
                            xmlns="http://www.w3.org/2000/svg" viewBox="0 0 64 64">
                            <g clip-path="url(#clip0)">
                                <path
                                    d="M.2 58.306c.398-2.002 1.594-3.203 2.99-4.605l7.178-7.207c2.193-2.202 4.187-4.404 6.38-6.606 1.993-2.002 3.788-4.004 5.782-5.805 1.395-1.402 3.19-1.802 5.183-1.202.4 0 .4 0 .798-.2 1.196-1.401 2.592-2.602 3.987-4.004-.398-.4-.797-.8-1.196-1.401l-4.187-4.204c-.2-.2-.598-.4-.797-.2-1.994 1-4.187.4-5.782-1.201-1.396-1.602-1.795-4.004-.598-5.806.598-1 1.395-1.601 2.193-2.402 2.99-3.003 5.782-6.006 8.772-9.009 1.197-1.2 2.194-2.202 3.39-3.403 1.595-1.401 4.386-1.401 5.981 0 1.794 1.401 2.193 3.403 1.595 5.605v.2c-.598.601-.2 1.002.2 1.402a311.977 311.977 0 0011.165 11.811l2.99 3.003c.2.2.399.2.598.2 2.991-1.401 6.38.2 7.178 3.604v1.601c-.2.4-.2 1.001-.598 1.401-.598.801-1.396 1.802-2.193 2.603-3.788 4.004-7.577 7.807-11.365 11.611-.598.6-1.395 1.401-2.193 1.602-1.794.6-3.988.2-5.383-1.402-1.396-1.601-1.794-3.603-.798-5.605.2-.4.2-.6-.199-.8l-3.39-3.404-2.193-2.202c-.199.2-.199.2-.398.2-1.396 1.401-2.792 3.003-4.387 4.404-.199.2-.199.4-.199.6 0 1.602-.598 3.004-1.595 4.205-6.779 6.806-13.358 13.613-20.137 20.42-.598.6-1.196 1-1.794 1.4-1.795 1.002-4.387.401-5.782-1.2C.598 61.508.199 60.307 0 59.306v-1.001h.2z" />
                            </g>
                            <defs>
                                <clipPath id="clip0">
                                    <path fill="#fff" d="M0 0h64v64H0z" />
                                </clipPath>
                            </defs>
                        </svg>
                        <svg v-else class="w-auto h-6 mr-2 fill-current" xmlns="http://www.w3.org/2000/svg"
                            viewBox="0 0 64 64">
                            <path
                                d="M52.132 45.611H60V41.85h-7.868v3.761zM52 28.686h8v-3.761h-8v3.761zm0 9.403h8v-5.642h-8v5.642zm6.06-20.105c.37.6.873 1.42 1.785 2.31.078.077.112.109.04.274-.055.12-.157.468-.278.596h-5.66c-.26-.399 0-1.062 0-1.564 0-1.453 1.257-2.634 2.8-2.634.671 0 .754.102 1.313 1.018zM48 28.686H16v-3.761h32v3.761zM16 38.09h32v-5.642H16v5.642zm32.007 7.522H30c-1.125-.701-3.31-1.536-4.528-1.504-1.123.044-2.716.88-3.472 1.504l-6-.001v-3.76h32.007v3.761zm-21.899 5.802c-.532-.107-1.076-.22-1.625-.298-.189-.028-.76-.11-1.102-.893-.39-.899-.248-2.25.314-2.957.4-.51 1.063-.805 1.862-.837.045-.002.091-.002.136-.002.841 0 1.714.29 2.47.82 1.581 1.107 2.15 2.916 1.266 4.034-.505.631-1.395.528-3.32.133zm-8.79.315c0-1.253 1.393-2.275 3.105-2.275.23 0 .447.042.663.078.045.506.142 1 .333 1.446a3.45 3.45 0 001.727 1.791c-.515.73-1.528 1.24-2.723 1.24-1.712 0-3.104-1.023-3.104-2.28zm-.415-33.16a3.87 3.87 0 012.081-.606c.108 0 .21.02.314.028.578.672 1.267 1.23 2.053 1.598.326.151.659.257.992.34.167.32-.404.875-.343 1.236h-6l.903-2.596zm5.73-6.486c.271 0 .538.026.79.076.92.181 1.579.658 1.956 1.417.121.245.214.494.286.743.2.671.23 1.35.072 1.969-.197.769-.654 1.347-1.29 1.625-.502.224-1.09.236-1.687.058a3.36 3.36 0 01-.466-.17c-.835-.386-1.54-1.097-1.988-1.994-1.178-2.369-.402-2.95.488-3.345a4.625 4.625 0 011.839-.379zm5.175 4.575l.031.026a4.936 4.936 0 00-.229 1.423c0 1.042.327 2.225.86 3.058h-2.906c-.217-.35-.371-.958-.445-1.375.076-.026.154-.038.226-.071 1.231-.54 2.102-1.596 2.452-2.965.008-.032.002-.064.01-.096zm5.859-3.887c0 .86-.43 1.624-1.09 2.134a3.047 3.047 0 01-1.864.64c-1.316 0-2.42-.822-2.8-1.943a2.595 2.595 0 01-.15-.831c0-1.532 1.324-2.778 2.95-2.778 1.63 0 2.954 1.246 2.954 2.778zm3.631 5.336c0 1.163-.608 2.408-1.53 3.058h-4.51c-.922-.65-1.528-1.895-1.528-3.058 0-.226.044-.44.088-.654.293.05.59.084.895.084a5.189 5.189 0 003.214-1.108 4.986 4.986 0 001.272-1.486c1.237.583 2.1 1.773 2.1 3.164zM46 19.283c0 .576-.111 1.435-.422 1.88h-5.056c-.312-.445-.522-1.304-.522-1.88 0-1.57 1.38-2.743 3.047-2.743 1.672 0 2.953 1.173 2.953 2.743zm-34 9.403H4v-3.761c5.206.094 7.873.094 8 0v3.761zM4 38.09h8v-5.642H4v5.642zm0 7.522h8V41.85l-8 .055v3.706zm6-24.447H6c.256-1.124.256-1.88 2-1.88 1.333 0 2 .626 2 1.88zm52 0c.189-.74-.047-1.684-.632-2.255-.73-.714-1.123-1.353-1.468-1.92-.608-.99-1.233-2.015-3.153-2.015-2.136 0-3.937 1.295-4.615 3.084V16.54H47.19a5.242 5.242 0 00-4.143-1.993 5.242 5.242 0 00-3.951 1.781c-.551-1.516-1.772-2.74-3.338-3.349.004-.07 0-1.146 0-1.218C35.758 9.131 32.795 8 30 8c-2.183 0-3.32 1.313-4.032 3.136-.593-.448-1.16-1.096-1.968-1.255-1.284-.251-2.876.237-4.103.775-1.578.697-3.074 2.211-1.758 5.39a6.114 6.114 0 00-1.68.494h-5.383v1.396a4.874 4.874 0 00-2.914-.97c-2.445 0-3.89 1.966-4.162 4.198H0v28.208l15.886.282c-.424.618-.686 1.32-.686 2.074C15.2 54.083 17.54 56 20.422 56c2.204 0 4.062-1.132 4.82-2.716.138.026.278.048.414.076.854.175 1.759.36 2.621.36 1.076 0 2.085-.288 2.846-1.249.648-.816.97-2.09.876-3.099h32V21.164h-2z" />
                        </svg>
                        {{ pa.user_type_phrase }}
                    </span>
                    <span>{{ trans("db.pa-serial-prefix") }} #{{
                        pa.serial
                    }}</span>
                </div>
                <div class="bg-white rounded-bl rounded-br p-4 flex">
                    <div class="flex flex-col items-center leading-none font-semibold">
                        <span v-for="(fun, i) in pa.delivery_date.split(' ')" :class="['text-3xl', 'text-lg', 'text-sm font-normal'][
                            i
                            ]
                            ">{{ fun }}</span>
                    </div>
                    <div class="ml-4">
                        <h3 class="text-2xl">{{ pa.bulb }}</h3>
                        <p class="lowercase">
                            <span>{{ pa.price }}</span>
                            <span class="ml-2"><b>{{ pa.quantity }}</b>
                                {{ trans(`db.${pa.uom}`) }}</span>
                        </p>
                        <p class="lowercase">
                            <span>{{ trans("db.size") }}
                                <b>{{ pa.size }}</b></span>
                            <span class="ml-2">{{ trans("db.class") }} {{ pa.class }}</span>
                        </p>
                    </div>
                    <div class="ml-auto flex">
                        <div class="flex items-center">
                            <p :style="{
                                color: pa.status.color,
                                borderColor: pa.status.color,
                            }"
                                class="w-64 py-2 px-4 border-2 rounded-xl text-center capitalize flex justify-center items-center">
                                <icon :name="pa.status.icon"></icon>
                                <span class="ml-2">{{
                                    pa.status.message
                                }}</span>
                            </p>
                        </div>
                    </div>
                    <ul class="pl-4 w-56 flex flex-col justify-center">
                        <li v-for="link in pa.links">
                            <a :href="link.href" :title="link.title" class="flex items-center">
                                <span v-if="link.icon === 'purchase-agreement'"><svg class="w-auto h-4 mr-2 fill-current"
                                        xmlns="http://www.w3.org/2000/svg" viewBox="0 0 48 64">
                                        <path
                                            d="M28 17V0H3C1.337 0 0 1.337 0 3v58c0 1.663 1.337 3 3 3h42c1.663 0 3-1.337 3-3V20H31c-1.65 0-3-1.35-3-3zm9.556 26.42L25.504 55.382a2.131 2.131 0 01-3.005 0L10.446 43.42C9.178 42.161 10.068 40 11.852 40H20V30a2 2 0 012-2h4a2 2 0 012 2v10h8.148c1.784 0 2.674 2.161 1.408 3.42zm9.569-30.295L34.888.875A2.998 2.998 0 0032.763 0H32v16h16v-.762a2.99 2.99 0 00-.875-2.113z" />
                                    </svg></span>
                                <span v-if="link.icon === 'proforma'"><svg class="w-auto h-4 mr-2 fill-current"
                                        xmlns="http://www.w3.org/2000/svg" viewBox="0 0 48 64">
                                        <path
                                            d="M37 50H27a1 1 0 00-1 1v2a1 1 0 001 1h10a1 1 0 001-1v-2a1 1 0 00-1-1zM10 30v12a2 2 0 002 2h24a2 2 0 002-2V30a2 2 0 00-2-2H12a2 2 0 00-2 2zm4 2h20v8H14v-8zm32.229-19.752L35.743 1.762A6 6 0 0031.505 0H6C2.688.013 0 2.7 0 6.011v51.99A6.001 6.001 0 005.999 64H41.99C45.304 64 48 61.312 48 58.001V16.496a6.037 6.037 0 00-1.771-4.248zm-14.235-5.75l9.511 9.51h-9.511v-9.51zM42 58.002H5.999V6.011h19.996V19.01a2.992 2.992 0 003 2.998H42v35.994zM11 14h10a1 1 0 001-1v-2a1 1 0 00-1-1H11a1 1 0 00-1 1v2a1 1 0 001 1zm0 8h10a1 1 0 001-1v-2a1 1 0 00-1-1H11a1 1 0 00-1 1v2a1 1 0 001 1z" />
                                    </svg></span>
                                <span v-if="link.icon === 'invoice'"><svg class="w-auto h-4 mr-2 fill-current"
                                        xmlns="http://www.w3.org/2000/svg" viewBox="0 0 48 64">
                                        <path
                                            d="M36 32H12v8h24v-8zm11.125-18.875L34.888.875A2.998 2.998 0 0032.763 0H32v16h16v-.762a2.99 2.99 0 00-.875-2.113zM28 17V0H3C1.337 0 0 1.337 0 3v58c0 1.663 1.337 3 3 3h42c1.663 0 3-1.337 3-3V20H31c-1.65 0-3-1.35-3-3zM8 9a1 1 0 011-1h10a1 1 0 011 1v2a1 1 0 01-1 1H9a1 1 0 01-1-1V9zm0 8a1 1 0 011-1h10a1 1 0 011 1v2a1 1 0 01-1 1H9a1 1 0 01-1-1v-2zm32 38a1 1 0 01-1 1H29a1 1 0 01-1-1v-2a1 1 0 011-1h10a1 1 0 011 1v2zm0-25v12a2 2 0 01-2 2H10a2 2 0 01-2-2V30a2 2 0 012-2h28a2 2 0 012 2z" />
                                    </svg></span>
                                {{ link.title }}
                            </a>
                        </li>
                        <li v-if="pa.complaint_url" class="mt-2">
                            <button type="button" @click.stop="showModal('complaintModal', pa)" class="text-left pl-6">
                                {{
                                    trans("buttons.show-submit-complaint-modal")
                                }}
                            </button>
                        </li>
                        <li v-if="pa.claim_url" class="mt-2">
                            <button type="button" @click.stop="showModal('claimModal', pa)" class="text-left pl-6">
                                {{ trans("buttons.show-submit-claim-modal") }}
                            </button>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div v-if="selectedTab.name === 'invoices'" class="p-2" ref="invoicesList">
            <p v-if="!combinedInvoices.length">
                {{ trans("db.no-combined-invoices") }}
            </p>
            <div v-else v-for="(invoice, rowIndex) in combinedInvoices.filter(
                (i) => i.completed === this.showCompleted
            )" @click="removeRowFocus(rowIndex)" class="mb-4 text-sm rounded">
                <div class="bg-light-gray rounded-tl rounded-tr flex justify-between items-center py-2 px-4">
                    <span class="flex items-center">
                        <svg v-if="invoice.user_type === 'buyer'" class="w-auto h-6 mr-2 fill-current"
                            xmlns="http://www.w3.org/2000/svg" viewBox="0 0 64 64">
                            <g clip-path="url(#clip0)">
                                <path
                                    d="M.2 58.306c.398-2.002 1.594-3.203 2.99-4.605l7.178-7.207c2.193-2.202 4.187-4.404 6.38-6.606 1.993-2.002 3.788-4.004 5.782-5.805 1.395-1.402 3.19-1.802 5.183-1.202.4 0 .4 0 .798-.2 1.196-1.401 2.592-2.602 3.987-4.004-.398-.4-.797-.8-1.196-1.401l-4.187-4.204c-.2-.2-.598-.4-.797-.2-1.994 1-4.187.4-5.782-1.201-1.396-1.602-1.795-4.004-.598-5.806.598-1 1.395-1.601 2.193-2.402 2.99-3.003 5.782-6.006 8.772-9.009 1.197-1.2 2.194-2.202 3.39-3.403 1.595-1.401 4.386-1.401 5.981 0 1.794 1.401 2.193 3.403 1.595 5.605v.2c-.598.601-.2 1.002.2 1.402a311.977 311.977 0 0011.165 11.811l2.99 3.003c.2.2.399.2.598.2 2.991-1.401 6.38.2 7.178 3.604v1.601c-.2.4-.2 1.001-.598 1.401-.598.801-1.396 1.802-2.193 2.603-3.788 4.004-7.577 7.807-11.365 11.611-.598.6-1.395 1.401-2.193 1.602-1.794.6-3.988.2-5.383-1.402-1.396-1.601-1.794-3.603-.798-5.605.2-.4.2-.6-.199-.8l-3.39-3.404-2.193-2.202c-.199.2-.199.2-.398.2-1.396 1.401-2.792 3.003-4.387 4.404-.199.2-.199.4-.199.6 0 1.602-.598 3.004-1.595 4.205-6.779 6.806-13.358 13.613-20.137 20.42-.598.6-1.196 1-1.794 1.4-1.795 1.002-4.387.401-5.782-1.2C.598 61.508.199 60.307 0 59.306v-1.001h.2z" />
                            </g>
                            <defs>
                                <clipPath id="clip0">
                                    <path fill="#fff" d="M0 0h64v64H0z" />
                                </clipPath>
                            </defs>
                        </svg>
                        <svg v-else class="w-auto h-6 mr-2 fill-current" xmlns="http://www.w3.org/2000/svg"
                            viewBox="0 0 64 64">
                            <path
                                d="M52.132 45.611H60V41.85h-7.868v3.761zM52 28.686h8v-3.761h-8v3.761zm0 9.403h8v-5.642h-8v5.642zm6.06-20.105c.37.6.873 1.42 1.785 2.31.078.077.112.109.04.274-.055.12-.157.468-.278.596h-5.66c-.26-.399 0-1.062 0-1.564 0-1.453 1.257-2.634 2.8-2.634.671 0 .754.102 1.313 1.018zM48 28.686H16v-3.761h32v3.761zM16 38.09h32v-5.642H16v5.642zm32.007 7.522H30c-1.125-.701-3.31-1.536-4.528-1.504-1.123.044-2.716.88-3.472 1.504l-6-.001v-3.76h32.007v3.761zm-21.899 5.802c-.532-.107-1.076-.22-1.625-.298-.189-.028-.76-.11-1.102-.893-.39-.899-.248-2.25.314-2.957.4-.51 1.063-.805 1.862-.837.045-.002.091-.002.136-.002.841 0 1.714.29 2.47.82 1.581 1.107 2.15 2.916 1.266 4.034-.505.631-1.395.528-3.32.133zm-8.79.315c0-1.253 1.393-2.275 3.105-2.275.23 0 .447.042.663.078.045.506.142 1 .333 1.446a3.45 3.45 0 001.727 1.791c-.515.73-1.528 1.24-2.723 1.24-1.712 0-3.104-1.023-3.104-2.28zm-.415-33.16a3.87 3.87 0 012.081-.606c.108 0 .21.02.314.028.578.672 1.267 1.23 2.053 1.598.326.151.659.257.992.34.167.32-.404.875-.343 1.236h-6l.903-2.596zm5.73-6.486c.271 0 .538.026.79.076.92.181 1.579.658 1.956 1.417.121.245.214.494.286.743.2.671.23 1.35.072 1.969-.197.769-.654 1.347-1.29 1.625-.502.224-1.09.236-1.687.058a3.36 3.36 0 01-.466-.17c-.835-.386-1.54-1.097-1.988-1.994-1.178-2.369-.402-2.95.488-3.345a4.625 4.625 0 011.839-.379zm5.175 4.575l.031.026a4.936 4.936 0 00-.229 1.423c0 1.042.327 2.225.86 3.058h-2.906c-.217-.35-.371-.958-.445-1.375.076-.026.154-.038.226-.071 1.231-.54 2.102-1.596 2.452-2.965.008-.032.002-.064.01-.096zm5.859-3.887c0 .86-.43 1.624-1.09 2.134a3.047 3.047 0 01-1.864.64c-1.316 0-2.42-.822-2.8-1.943a2.595 2.595 0 01-.15-.831c0-1.532 1.324-2.778 2.95-2.778 1.63 0 2.954 1.246 2.954 2.778zm3.631 5.336c0 1.163-.608 2.408-1.53 3.058h-4.51c-.922-.65-1.528-1.895-1.528-3.058 0-.226.044-.44.088-.654.293.05.59.084.895.084a5.189 5.189 0 003.214-1.108 4.986 4.986 0 001.272-1.486c1.237.583 2.1 1.773 2.1 3.164zM46 19.283c0 .576-.111 1.435-.422 1.88h-5.056c-.312-.445-.522-1.304-.522-1.88 0-1.57 1.38-2.743 3.047-2.743 1.672 0 2.953 1.173 2.953 2.743zm-34 9.403H4v-3.761c5.206.094 7.873.094 8 0v3.761zM4 38.09h8v-5.642H4v5.642zm0 7.522h8V41.85l-8 .055v3.706zm6-24.447H6c.256-1.124.256-1.88 2-1.88 1.333 0 2 .626 2 1.88zm52 0c.189-.74-.047-1.684-.632-2.255-.73-.714-1.123-1.353-1.468-1.92-.608-.99-1.233-2.015-3.153-2.015-2.136 0-3.937 1.295-4.615 3.084V16.54H47.19a5.242 5.242 0 00-4.143-1.993 5.242 5.242 0 00-3.951 1.781c-.551-1.516-1.772-2.74-3.338-3.349.004-.07 0-1.146 0-1.218C35.758 9.131 32.795 8 30 8c-2.183 0-3.32 1.313-4.032 3.136-.593-.448-1.16-1.096-1.968-1.255-1.284-.251-2.876.237-4.103.775-1.578.697-3.074 2.211-1.758 5.39a6.114 6.114 0 00-1.68.494h-5.383v1.396a4.874 4.874 0 00-2.914-.97c-2.445 0-3.89 1.966-4.162 4.198H0v28.208l15.886.282c-.424.618-.686 1.32-.686 2.074C15.2 54.083 17.54 56 20.422 56c2.204 0 4.062-1.132 4.82-2.716.138.026.278.048.414.076.854.175 1.759.36 2.621.36 1.076 0 2.085-.288 2.846-1.249.648-.816.97-2.09.876-3.099h32V21.164h-2z" />
                        </svg>
                        {{ invoice.user_type_phrase }}
                    </span>
                    <span>{{ invoice.payment_type }} #{{ invoice.serial }}</span>
                </div>
                <div class="bg-white rounded-bl rounded-br p-4">
                    <div class="flex">
                        <div class="w-4/12 flex items-center justify-between pr-8">
                            <span class="text-lg leading-none font-semibold">{{
                                invoice.created_at
                            }}</span>
                            <h3 class="text-xl">{{ invoice.total }}</h3>
                        </div>
                        <div class="w-4/12 pl-4 flex items-center" v-if="invoice.pa_count">
                            <button type="button" class="text-lg flex items-center"
                                @click.stop="toggleInvoiceItems(invoice)">
                                {{ invoice.pa_count }}
                                <svg class="w-auto h-4 ml-2 fill-current" xmlns="http://www.w3.org/2000/svg"
                                    viewBox="0 0 64 64">
                                    <g clip-path="url(#clip0)">
                                        <path
                                            d="M29.513 49.045L1.03 22.645c-1.373-1.273-1.373-3.338 0-4.61l3.322-3.08c1.372-1.271 3.594-1.274 4.969-.005L32 35.871 54.678 14.95c1.375-1.269 3.597-1.266 4.969.005l3.322 3.08c1.373 1.272 1.373 3.337 0 4.61l-28.483 26.4c-1.373 1.273-3.6 1.273-4.974 0z" />
                                    </g>
                                    <defs>
                                        <clipPath id="clip0">
                                            <path fill="#fff" d="M0 0h64v64H0z" />
                                        </clipPath>
                                    </defs>
                                </svg>
                            </button>
                        </div>
                        <div class="ml-auto flex items-center group">
                            <a v-for="link in invoice.links" :href="link.href" :title="link.title">
                                <svg v-if="link.icon === 'invoice'" class="w-auto h-6 fill-current"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 64 64">
                                    <path
                                        d="M44 32H20v8h24v-8zm11.125-18.875L42.888.875A2.998 2.998 0 0040.763 0H40v16h16v-.762a2.99 2.99 0 00-.875-2.113zM36 17V0H11C9.338 0 8 1.337 8 3v58c0 1.663 1.338 3 3 3h42c1.663 0 3-1.337 3-3V20H39c-1.65 0-3-1.35-3-3zM16 9a1 1 0 011-1h10a1 1 0 011 1v2a1 1 0 01-1 1H17a1 1 0 01-1-1V9zm0 8a1 1 0 011-1h10a1 1 0 011 1v2a1 1 0 01-1 1H17a1 1 0 01-1-1v-2zm32 38a1 1 0 01-1 1H37a1 1 0 01-1-1v-2a1 1 0 011-1h10a1 1 0 011 1v2zm0-25v12a2 2 0 01-2 2H18a2 2 0 01-2-2V30a2 2 0 012-2h28a2 2 0 012 2z" />
                                </svg>
                                <svg v-if="link.icon === 'proforma'" class="w-auto h-6 fill-current"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 64 64">
                                    <path
                                        d="M45 50H35a1 1 0 00-1 1v2a1 1 0 001 1h10a1 1 0 001-1v-2a1 1 0 00-1-1zM18 30v12a2 2 0 002 2h24a2 2 0 002-2V30a2 2 0 00-2-2H20a2 2 0 00-2 2zm4 2h20v8H22v-8zm32.229-19.752L43.743 1.762A6 6 0 0039.505 0H14C10.687.013 8 2.7 8 6.011v51.99A6.001 6.001 0 0013.999 64H49.99C53.304 64 56 61.312 56 58.001V16.496a6.037 6.037 0 00-1.771-4.248zm-14.235-5.75l9.511 9.51h-9.511v-9.51zM50 58.002H13.999V6.011h19.996V19.01a2.992 2.992 0 003 2.998H50v35.994zM19 14h10a1 1 0 001-1v-2a1 1 0 00-1-1H19a1 1 0 00-1 1v2a1 1 0 001 1zm0 8h10a1 1 0 001-1v-2a1 1 0 00-1-1H19a1 1 0 00-1 1v2a1 1 0 001 1z" />
                                </svg>
                            </a>
                            <a v-if="invoice.payment_link" :href="invoice.payment_link" :style="{
                                backgroundColor: invoice.status.color,
                                borderColor: invoice.status.color,
                            }"
                                class="flex items-center justify-center ml-4 w-56 py-2 px-4 border-2 rounded-xl text-white hover:bg-blue-600 transition-colors duration-300 text-center capitalize">
                                <icon :name="invoice.status.icon"></icon>
                                <span class="ml-2">{{
                                    invoice.status.message
                                }}</span>
                            </a>
                            <p v-else :style="{
                                        color: invoice.status.color,
                                        borderColor: invoice.status.color,
                                    }"
                                class="flex items-center justify-center ml-4 w-56 py-2 px-4 border-2 rounded-xl text-center capitalize">
                                <icon :name="invoice.status.icon"></icon>
                                <span class="ml-2">{{
                                    invoice.status.message
                                }}</span>
                            </p>
                        </div>
                    </div>
                    <div class="flex" v-if="showInvoiceItems[invoice.id]">
                        <ul class="w-full text-gray-600">
                            <li v-for="item in invoice.items" class="flex">
                                <span class="w-4/12 text-right pr-8">{{
                                    item.total
                                }}</span>
                                <span v-if="item.pa_id" class="pl-4 w-2/12 cursor-pointer" @click.stop="
                                    goToPurchaseAgreement(item.pa_id)
                                    ">
                                    #{{ item.pa_serial }}
                                </span>
                                <span v-if="!item.pa_id" class="pl-4 w-2/12">{{
                                    trans("db.partner-fee")
                                }}</span>
                                <span v-if="item.status">{{
                                    item.status
                                }}</span>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div v-if="selectedTab.name === 'complaints'" class="p-2" :ref="`complaintsList`">
            <p v-if="!complaints.length">{{ trans("db.no-complaints") }}</p>
            <div v-else v-for="(complaint, rowIndex) in complaints.filter(
                        (i) => i.completed === this.showCompleted
                    )" @click="removeRowFocus(rowIndex)" class="mb-4 text-sm rounded">
                <div class="bg-light-gray rounded-tl rounded-tr flex justify-between items-center py-2 px-4">
                    <span class="flex items-center">{{
                        complaint.user_type_phrase
                    }}</span>
                    <span>{{ trans("db.pa-serial-prefix") }} #{{
                        complaint.pa.serial
                    }}</span>
                </div>
                <div class="bg-white rounded-bl rounded-br p-4">
                    <div class="flex items-center">
                        <span class="w-2/12 text-lg leading-none font-semibold">{{ complaint.created_at }}</span>
                        <div v-if="complaint.resolved_at === null" class="w-7/12 flex items-center">
                            <p>"{{ complaint.about }}"</p>
                            <span class="px-4 py-2 relative group">
                                <svg class="w-auto h-4 fill-current" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 64 64">
                                    <g clip-path="url(#clip0)">
                                        <path
                                            d="M18.006 26c-2.212 0-4 1.788-4 4 0 2.212 1.788 4 4 4 2.212 0 4-1.788 4-4 0-2.212-1.788-4-4-4zm13.998 0c-2.212 0-4 1.788-4 4 0 2.212 1.788 4 4 4 2.212 0 4-1.788 4-4 0-2.212-1.788-4-4-4zm13.998 0c-2.212 0-4 1.788-4 4 0 2.212 1.788 4 4 4 2.213 0 4-1.788 4-4 0-2.212-1.787-4-4-4zM32.004 4C14.331 4 .008 15.637.008 30c0 5.95 2.487 11.4 6.612 15.788-1.862 4.925-5.737 9.1-5.8 9.15A3 3 0 003.009 60c7.686 0 13.748-3.212 17.385-5.788A38.596 38.596 0 0032.004 56C49.677 56 64 44.362 64 30 64 15.637 49.677 4 32.004 4zm0 46c-3.337 0-6.636-.513-9.799-1.513l-2.837-.9-2.437 1.725c-1.787 1.263-4.237 2.675-7.186 3.626.912-1.513 1.8-3.213 2.487-5.026l1.325-3.512-2.575-2.725C8.72 39.263 6.008 35.275 6.008 30c0-11.025 11.66-20 25.996-20 14.336 0 25.997 8.975 25.997 20S46.34 50 32.004 50z" />
                                    </g>
                                    <defs>
                                        <clipPath id="clip0">
                                            <path fill="#fff" d="M0 0h64v64H0z" />
                                        </clipPath>
                                    </defs>
                                </svg>
                                <tooltip-right>{{
                                    complaint.comment
                                }}</tooltip-right>
                            </span>
                        </div>
                        <div v-else class="w-7/12 flex items-center">
                            <p>{{ complaint.resolution }}</p>
                            <span class="px-4 py-2 relative group">
                                <svg class="w-auto h-4 fill-current" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 64 64">
                                    <path
                                        d="M32 4C14.325 4 0 15.637 0 30c0 6.2 2.675 11.875 7.125 16.337C5.562 52.637.338 58.25.275 58.313A.994.994 0 00.087 59.4c.163.375.513.6.913.6 8.287 0 14.5-3.975 17.575-6.425A38.122 38.122 0 0032 56c17.675 0 32-11.638 32-26C64 15.637 49.675 4 32 4zM16 34c-2.213 0-4-1.788-4-4 0-2.212 1.787-4 4-4 2.212 0 4 1.788 4 4 0 2.212-1.788 4-4 4zm16 0c-2.212 0-4-1.788-4-4 0-2.212 1.788-4 4-4 2.212 0 4 1.788 4 4 0 2.212-1.788 4-4 4zm16 0c-2.212 0-4-1.788-4-4 0-2.212 1.788-4 4-4 2.212 0 4 1.788 4 4 0 2.212-1.788 4-4 4z" />
                                </svg>
                                <tooltip-right>{{
                                    complaint.resolution_comment
                                }}</tooltip-right>
                            </span>
                        </div>
                        <div class="flex-1 flex items-center">
                            <p :style="{
                                        color: complaint.status.color,
                                        borderColor: complaint.status.color,
                                    }"
                                class="flex items-center justify-center ml-4 w-48 py-2 px-4 border-2 rounded-xl text-center capitalize">
                                <icon :name="complaint.status.icon"></icon>
                                <span class="ml-2">{{
                                    complaint.status.message
                                }}</span>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <modal ref="complaintModal" v-if="complaintModal.pa">
            <h2 class="secondary-title">
                {{ trans("headings.submit-complaint") }}
            </h2>
            <div class="flex mt-6">
                <div class="w-40">
                    <img :src="complaintModal.pa.offer_image" alt="offer image" />
                </div>
                <div class="ml-4">
                    <h3 class="text-xl">{{ complaintModal.pa.bulb }}</h3>
                    <ul class="text-sm mt-2">
                        <li>
                            <b>{{ complaintModal.pa.class }}</b>
                        </li>
                        <li>
                            {{ trans("db.size") }}
                            <b>{{ complaintModal.pa.size }}</b>
                        </li>
                        <li>
                            <b>{{ complaintModal.pa.quantity }}</b>
                            {{ trans(`db.${complaintModal.pa.uom}`) }}
                        </li>
                    </ul>
                </div>
            </div>
            <form class="font-raleway mt-4">
                <template v-for="(question, input_name) in complaintModal.questions">
                    <div class="pt-4">
                        <span>{{ question.text }}</span>
                        <div class="mt-2">
                            <label v-for="(option, i) in question.options" class="inline-flex items-center mb-0"
                                :class="[i > 0 ? 'ml-6' : null]">
                                <input type="radio" class="form-radio" :name="input_name" :value="option.value"
                                    v-model="question.answer" v-validate="'required'"
                                    :data-vv-as="trans(`db.${input_name}`)" />
                                <span class="ml-2">{{ option.label }}</span>
                            </label>
                            <div class="text-red-500 mt-4 text-sm" v-show="errors.has(input_name)"
                                v-text="errors.first(input_name)"></div>
                        </div>
                    </div>
                </template>
                <label class="block pt-4">
                    <span>{{ complaintModal.text.label }}</span>
                    <textarea id="complaint-text" name="text" v-model="complaintModal.text.value"
                        :placeholder="complaintModal.text.placeholder"
                        class="form-textarea mt-2 block w-full border-b-2 border-b-gray-700" cols="30" rows="3"
                        v-validate="'required'" :data-vv-as="trans('db.complaint-text')"></textarea>
                </label>
                <div class="text-red-500 mt-4 text-sm" v-show="errors.has('text')" v-text="errors.first('text')"></div>
                <div class="mt-6">
                    <button type="button"
                        class="py-2 w-48 font-semibold bg-green-kuukz-500 text-white rounded-4 border-b-4 border-gray-400 transition-colors duration-300 hover:bg-green-kuukz-600"
                        @click.stop="submitModalForm('complaintModal')" :disabled="this.formSubmitDisabled">
                        {{ trans("buttons.submit-complaint") }}
                    </button>
                    <button type="button"
                        class="font-semibold border-b-4 border-gray-300 transition-colors duration-300 hover:border-gray-400 ml-4"
                        @click.stop="$refs.complaintModal.hide()">
                        {{ trans("buttons.cancel") }}
                    </button>
                </div>
            </form>
        </modal>
        <modal ref="claimModal" v-if="claimModal.pa">
            <h2 class="secondary-title">
                {{ trans("headings.submit-claim") }}
            </h2>
            <div class="flex mt-6">
                <div class="w-40">
                    <img :src="claimModal.pa.offer_image" alt="offer image" />
                </div>
                <div class="ml-4">
                    <h3 class="text-xl">{{ claimModal.pa.bulb }}</h3>
                    <ul class="text-sm mt-2">
                        <li>
                            <b>{{ claimModal.pa.class }}</b>
                        </li>
                        <li>
                            {{ trans("db.size") }}
                            <b>{{ claimModal.pa.size }}</b>
                        </li>
                        <li>
                            <b>{{ claimModal.pa.quantity }}</b>
                            {{ trans(`db.${claimModal.pa.uom}`) }}
                        </li>
                        <li v-if="claimModal.pa.delivered_quantity > 0">
                            <b>{{ trans("db.pa-delivered-quantity") }}</b>
                            {{ claimModal.pa.delivered_quantity }}
                        </li>
                    </ul>
                </div>
            </div>
            <form class="font-raleway mt-4">
                <label class="block pt-4">
                    <span>{{ claimModal.percent.label }}</span>
                    <input class="form-input mt-1 block w-full" type="number" step="0.1" min="0.1" :max="15" name="percent"
                        v-model="claimModal.percent.value" :placeholder="claimModal.percent.placeholder"
                        v-validate="`required|max:15`" :data-vv-as="trans('db.claim-percent')" />
                </label>
                <div class="text-red-500 mt-4 text-sm" v-show="errors.has('percent')" v-text="errors.first('percent')">
                </div>
                <label class="block pt-4">
                    <span>{{ claimModal.text.label }}</span>
                    <textarea cols="30" rows="3" id="claim-text" name="text" v-model="claimModal.text.value"
                        :placeholder="claimModal.text.placeholder"
                        class="form-textarea mt-2 block w-full border-b-2 border-b-gray-700" v-validate="'required'"
                        :data-vv-as="trans('db.complaint-text')"></textarea>
                </label>
                <div class="text-red-500 mt-4 text-sm" v-show="errors.has('text')" v-text="errors.first('text')"></div>
                <div class="mt-6">
                    <button type="button"
                        class="py-2 w-48 font-semibold bg-green-kuukz-500 text-white rounded-4 border-b-4 border-gray-400 transition-colors duration-300 hover:bg-green-kuukz-600"
                        @click.stop="submitModalForm('claimModal')" :disabled="this.formSubmitDisabled">
                        {{ trans("buttons.submit-complaint") }}
                    </button>
                    <button type="button"
                        class="font-semibold border-b-4 border-gray-300 transition-colors duration-300 hover:border-gray-400 ml-4"
                        @click.stop="$refs.claimModal.hide()">
                        {{ trans("buttons.cancel") }}
                    </button>
                </div>
            </form>
        </modal>
        <notification ref="notification"></notification>
    </div>
</template>

<script>
//imports
import "../../scss/tailwind.css";
import CommonVueMethods from "../CommonVueMethods";
import Icon from "./Icon";
import Modal from "./Modal";
import Notification from "./Notification";
import TooltipRight from "./TooltipRight";
import VeeValidate, { Validator } from "vee-validate";
import nl from "vee-validate/dist/locale/nl";
Validator.localize("nl", nl);

export default {
    name: "orders-and-complaints",

    extends: CommonVueMethods,

    components: {
        Icon,
        Modal,
        VeeValidate,
        Notification,
        TooltipRight,
    },

    props: {
        purchaseAgreements: {
            required: true,
            type: Array,
        },
        combinedInvoices: {
            required: true,
            type: Array,
        },
        complaints: {
            required: true,
            type: Array,
        },
    },

    data() {
        return {
            tabs: {
                purchaseAgreements: {
                    name: "purchaseAgreements",
                    focus: true,
                    title: "db.purchase-agreements",
                },

                invoices: {
                    name: "invoices",
                    focus: false,
                    title: "db.invoices",
                },

                complaints: {
                    name: "complaints",
                    focus: false,
                    title: "db.complaints-and-claims",
                },
            },

            showInvoiceItems: {},

            complaintModal: {
                pa: null,
                questions: {
                    is_size_correct: {
                        text: this.trans("headings.size-correct"),
                        options: [
                            { value: true, label: this.trans("labels.yes") },
                            { value: false, label: this.trans("labels.no") },
                        ],
                        answer: null,
                    },

                    is_quantity_correct: {
                        text: this.trans("headings.quantity-correct"),
                        options: [
                            { value: true, label: this.trans("labels.yes") },
                            { value: false, label: this.trans("labels.no") },
                        ],
                        answer: null,
                    },

                    is_quality_correct: {
                        text: this.trans("headings.quality-correct"),
                        options: [
                            { value: true, label: this.trans("labels.yes") },
                            { value: false, label: this.trans("labels.no") },
                        ],
                        answer: null,
                    },
                },

                text: {
                    label: this.trans("labels.your-explanation"),
                    placeholder: this.trans("labels.complaint-placeholder"),
                    value: "",
                },
            },

            claimModal: {
                pa: null,
                percent: {
                    label: this.trans("labels.claim-percent"),
                    placeholder: this.trans("labels.claim-percent-placeholder"),
                    value: null,
                },
                text: {
                    label: this.trans("labels.claim-text-your-explanation"),
                    placeholder: this.trans("labels.claim-text-placeholder"),
                    value: "",
                },
            },

            shouldResetFocusedRows: false,

            showCompleted: true,

            formSubmitDisabled: false,
        };
    },

    created() {
        // initialize the flag responsible for the state of the invoice items dropdown menu
        this.combinedInvoices.forEach((ci) =>
            this.$set(this.showInvoiceItems, ci.id, false)
        );
    },

    mounted() {
        // handle tab focus and focus of specific row using URL query string parameters
        const parseQueryStringParams = () => {
            // get url params
            let urlParams = new URLSearchParams(window.location.search),
                type = urlParams.get("type"),
                id = urlParams.has("id") ? parseInt(urlParams.get("id")) : null,
                ids = urlParams.has("ids")
                    ? urlParams
                        .get("ids")
                        .split(",")
                        .map((i) => parseInt(i))
                    : null;

            if (
                ![
                    "agreement",
                    "invoice",
                    "proforma",
                    "complaint",
                    "claim",
                ].includes(type)
            ) {
                return;
            }

            // scroll down to a specific row using model id and apply focus styles
            const scrollToIdAndFocusRow = (id, instancePropertyName) => {
                let index = this[instancePropertyName]
                    .filter((i) => i.completed === this.showCompleted)
                    .findIndex((model) => model.id === id);

                if (index === -1) return;

                this.$nextTick(() => {
                    this.scrollToRow(index);
                    this.$nextTick(() => this.setRowFocus(index));
                });

                this.shouldResetFocusedRows = true;
            };

            // scroll down to the first row in the list of ids and apply focus styles to all of them
            const scrollToFirstIdAndFocusRows = (ids, instancePropertyName) => {
                let indexes = [];

                ids.forEach((id) => {
                    indexes.push(
                        this[instancePropertyName]
                            .filter((i) => i.completed === this.showCompleted)
                            .findIndex((model) => model.id === id)
                    );
                });

                if (indexes.includes(-1)) return;

                this.$nextTick(() => {
                    this.scrollToRow(indexes[0]);
                    this.$nextTick(() =>
                        indexes.forEach((index) => this.setRowFocus(index))
                    );
                });

                this.shouldResetFocusedRows = true;
            };

            // compensate for page load
            setTimeout(() => {
                if (type === "agreement") {
                    this.focusTab("purchaseAgreements");
                    if (id) scrollToIdAndFocusRow(id, "purchaseAgreements");
                    if (ids)
                        scrollToFirstIdAndFocusRows(ids, "purchaseAgreements");
                    return;
                }

                if (["invoice", "proforma"].includes(type)) {
                    this.focusTab("invoices");
                    if (id) scrollToIdAndFocusRow(id, "combinedInvoices");
                    return;
                }

                if (["complaint", "claim"].includes(type)) {
                    this.focusTab("complaints");
                    if (id) scrollToIdAndFocusRow(id, "complaints");
                }
            }, 500);
        };

        parseQueryStringParams();
    },

    methods: {
        // focus one of the tabs by passing its name
        focusTab(tabName) {
            if (this.shouldResetFocusedRows) {
                this.resetFocusedRows();
            }

            Object.keys(this.tabs).forEach(
                (tab) => (this.tabs[tab].focus = tabName === tab)
            );
        },

        // apply focus styles to a row
        setRowFocus(index) {
            setTimeout(() => {
                this.$refs[`${this.selectedTab.name}List`].childNodes[
                    index
                ].classList.add(
                    "shadow-outline",
                    "border-blue-400",
                    "bigger",
                    "cursor-pointer"
                );
            }, index * 50);
        },

        // remove the focus styles from a row, used @click on focused row
        removeRowFocus(index) {
            this.$refs[`${this.selectedTab.name}List`].childNodes[
                index
            ].classList.remove(
                "shadow-outline",
                "border-blue-400",
                "bigger",
                "cursor-pointer"
            );
        },

        // reset all focused rows
        // todo: learn why it applies the focus to other children of other containers as well?!
        resetFocusedRows() {
            this.$refs[`${this.selectedTab.name}List`].childNodes.forEach(
                (node) => {
                    node.classList.remove(
                        "shadow-outline",
                        "border-blue-400",
                        "bigger",
                        "cursor-pointer"
                    );
                }
            );
        },

        // scroll down to a specific row by its index
        scrollToRow(index) {
            this.$refs[`${this.selectedTab.name}List`].childNodes[
                index
            ].scrollIntoView({
                behavior: "smooth",
                block: "center",
                inline: "nearest",
            });
        },

        // focus the PA tab and scroll down to a given row based on PA.id, used @click on invoice items
        goToPurchaseAgreement(paId) {
            const index = this.purchaseAgreements
                .filter((i) => i.completed === this.showCompleted)
                .findIndex((pa) => pa.id === paId);

            this.focusTab("purchaseAgreements");

            this.$nextTick(() => {
                this.scrollToRow(index);
                this.$nextTick(() => this.setRowFocus(index));
            });
        },

        // expand and collapse the invoice items list
        toggleInvoiceItems(invoice) {
            this.showInvoiceItems[invoice.id] =
                !this.showInvoiceItems[invoice.id];
        },

        // show complaint/claim modal
        showModal(ref, pa) {
            this.$validator.reset();
            this[ref].pa = pa;
            this.$nextTick(() => this.$refs[ref].show());
        },

        // submit complaint/claim form
        async submitModalForm(ref) {
            // validate
            const isValid = await this.$validator.validate();

            if (!isValid) return;

            this.formSubmitDisabled = true;

            const onSuccess = (response) => {
                let pa = this.purchaseAgreements.find(
                    (pa) => pa.id === this[ref].pa.id
                );

                pa[ref === "complaintModal" ? "complaint_url" : "claim_url"] =
                    null; // hide the button
                pa.status = response.data.pa_status; // update PA status
                this.$refs[ref].hide(); // hide the form
                // todo: push the created complaint/claim to the complaints array
                this.resetFormData(ref); // cleanup the form data
                this.formSubmitDisabled = false;
                this.$refs.notification.success(
                    response.data.notification.text
                ); // show notification
            };

            const onError = (error) => {
                // handle server side validation errors
                if (error.response.status === 422) {
                    let errors = error.response.data.errors;

                    Object.keys(errors).forEach((field) => {
                        this.$validator.errors.add({
                            field: field,
                            msg: errors[field][0],
                        });
                    });
                }

                this.formSubmitDisabled = false;
            };

            // ship it
            axios
                .post(this.getFormAction(ref), this.getFormData(ref))
                .then(onSuccess)
                .catch(onError);
        },

        // get the URL for submitting complaint/claim from the PA
        getFormAction(ref) {
            return this[ref].pa[
                ref === "complaintModal" ? "complaint_url" : "claim_url"
            ];
        },

        // get the data from the forms for complaint/claim
        getFormData(ref) {
            const data = {};

            if (ref === "complaintModal") {
                data.purchase_agreement_id = this.complaintModal.pa.id;
                data.text = this.complaintModal.text.value;
                Object.keys(this.complaintModal.questions).forEach(
                    (k) => (data[k] = this.complaintModal.questions[k].answer)
                );
            } else {
                data.percent = this.claimModal.percent.value;
                data.comment = this.claimModal.text.value;
            }

            return data;
        },

        // reset the models for the form inputs to their defaults
        resetFormData(ref) {
            this.$validator.pause();

            ref === "complaintModal"
                ? Object.values(this[ref].questions).forEach(
                    (q) => (q.answer = null)
                )
                : (this[ref].percent.value = null);

            this[ref].text.value = "";
        },
    },

    computed: {
        // Find the key of the focused tab and return the tab itself.
        selectedTab() {
            return this.tabs[
                Object.keys(this.tabs).find((key) => this.tabs[key].focus)
            ];
        },
    },
};
</script>
<style scoped>
.font-raleway {
    font-family: "ralewaysemibold", "ralewaymedium", "sans-serif";
}

.bigger {
    transform: scale(1.01);
}
</style>
