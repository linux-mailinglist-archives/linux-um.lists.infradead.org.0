Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 528FF1E6857
	for <lists+linux-um@lfdr.de>; Thu, 28 May 2020 19:08:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zib3diP1/KgtdWG1kszXkA25BfRTeqfHvsUxPbQAFDg=; b=G72d5YnGPKY75LBdNmvXxy2OV
	k9ydsqOnOHKY8Oi250UTPyAP5hRNk2cMFISpQ5jnTLKWhdIvfC/+CHJRbRWTc2pKaq9zmjDybEduj
	yJoDFRGaOWpLgJN6kfyCn9LVIRZQ+8HqFsCk9LR3buCtMv4nfxKj/VO5Wj7vkjT0N0mYkHIdeyWWS
	/5hExNTf0sRfNCkL/WW4BA1lfICTsBFP20Z5bZ8b5utVEepzymvInfIGU9C/0kbaOtt3TUILzXDOl
	6hPTt1TiV9T2Kkm1u7jbzK9vGkxdhTPRXWZyZAokpIwKDrIu1M7F6D6b4z1J9Hb913KHhAZ6f/+3i
	KI0Xx56Ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeM1O-0003NX-6f; Thu, 28 May 2020 17:08:46 +0000
Received: from mx0b-00082601.pphosted.com ([67.231.153.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeM05-0001sK-IT
 for linux-um@lists.infradead.org; Thu, 28 May 2020 17:07:27 +0000
Received: from pps.filterd (m0109332.ppops.net [127.0.0.1])
 by mx0a-00082601.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04SH5VfE010223; Thu, 28 May 2020 10:07:08 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.com;
 h=subject : to : cc :
 references : from : message-id : date : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=facebook;
 bh=ttpklS1jCjfldmKIMBzGwqeDTHTIzeohYbM/31d+z+g=;
 b=QbD1JXduP0r4nMGPWf8zwmXRu8aBrgeZW7uldKNmq7oy/M3jXRmpQD92Go5kdrbaqxXE
 8yyHFsWpQ3iRWN763uI9Zj9dVep+8EjyC9jsOHbQG0dP+R1qi9r3N4ZNxh0MzN0pScK2
 It+mkrOxS/vbDyM9YH3afv8LGXo2pqbNoSU= 
Received: from maileast.thefacebook.com ([163.114.130.16])
 by mx0a-00082601.pphosted.com with ESMTP id 319bqcuysr-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
 Thu, 28 May 2020 10:07:08 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (100.104.31.183)
 by o365-in.thefacebook.com (100.104.36.103) with Microsoft SMTP
 Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Thu, 28 May 2020 10:06:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ULHtXmn1HonriYbs4H6yqquPDEp+b+R0K+64dlsEjil+mt+pQflAnRw3cgzlFBtrzGDTNcA1p6P94vREsKDW0Sq19+DzztWhWPp7yYOtLC82Dl1fbN07bYHXkGcDTyi0palsRVgfqclxLIcA3D9fAUZbv+HYE5tI88zMocS8OnDJNbWztlFt9kC9+Iw20JFnyFfFVHzZFb63VNMsJQtJftAaSDbNVd6VzzZ3Iym1C3AxPk+pUO/HhZ4bc5nYmGYkTQ6fEgaQEoe2Pnzdwxl3sDYnocwjRL60x3qNwIMcthD/B/ZK7roVA2MpqB8TSc9EE2j4rN17yDjEAuSB/U1+zQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ttpklS1jCjfldmKIMBzGwqeDTHTIzeohYbM/31d+z+g=;
 b=B1G+DUNq9r7tDrZKBsdH9BlIXfBIeRbyFvHkLT6Uf9wgHcMu4d+FGncHynzMhSnWfOHp6Xx+RpXK0ENF6Ozpl+pIgc2ctMA55WIs8+5/aG6FrwQ/idDISlcwrEw+GbCGKtorODdOTSnm0u5EICegCBY1j4lmfBQ682dv2gnDlQZRmUn5U+gkou7YLHeicBUt29pQHAApRqUTC9jq0/JCSxx9gLRNPDQV8l1IF+mQN8IPIfFtCdpKLJhAf75T8QORzkwUI8aL0TK0pdc0uQHTZBNDW+JlqIseeMszWY16t21xHjDIrZ8+zDVm3JAYZloJ2zpW1YcUgCi3zQt2XAwjzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fb.com; dmarc=pass action=none header.from=fb.com; dkim=pass
 header.d=fb.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.onmicrosoft.com;
 s=selector2-fb-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ttpklS1jCjfldmKIMBzGwqeDTHTIzeohYbM/31d+z+g=;
 b=C2ieEJbYcf4YukfpLWYfoPd8zdL8qdsnp2k7DbSGBhaC1mGIEIyanvB4EvWnQqDsU17IxVaHLQCCH1DFvzHjJ3BzQGOXPejN1Qc/hDsmHlT4WZvMP1vbolxa8w6hdCK5x71/Vsk8CeR9sf9rRpmQxaLvprQVZEMqAJ7SdMi26h8=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=none action=none header.from=fb.com;
Received: from BYAPR15MB4088.namprd15.prod.outlook.com (2603:10b6:a02:c3::18)
 by BYAPR15MB2901.namprd15.prod.outlook.com (2603:10b6:a03:b5::32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.27; Thu, 28 May
 2020 17:06:20 +0000
Received: from BYAPR15MB4088.namprd15.prod.outlook.com
 ([fe80::4922:9927:5d6c:5301]) by BYAPR15MB4088.namprd15.prod.outlook.com
 ([fe80::4922:9927:5d6c:5301%7]) with mapi id 15.20.3021.030; Thu, 28 May 2020
 17:06:20 +0000
Subject: Re: [PATCH 12/23] bpf: handle the compat string in
 bpf_trace_copy_string better
To: Christoph Hellwig <hch@lst.de>
References: <20200521152301.2587579-1-hch@lst.de>
 <20200521152301.2587579-13-hch@lst.de>
 <20200527190432.e4af1fba00c13cb1421f5a37@linux-foundation.org>
 <2b64fae6-394c-c1e5-8963-c256f4284065@fb.com> <20200528043957.GA28494@lst.de>
From: Yonghong Song <yhs@fb.com>
Message-ID: <a1aa26f4-8c0a-5f8a-8460-6d61f167702d@fb.com>
Date: Thu, 28 May 2020 10:06:17 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:68.0)
 Gecko/20100101 Thunderbird/68.8.1
In-Reply-To: <20200528043957.GA28494@lst.de>
Content-Language: en-US
X-ClientProxiedBy: BY3PR04CA0020.namprd04.prod.outlook.com
 (2603:10b6:a03:217::25) To BYAPR15MB4088.namprd15.prod.outlook.com
 (2603:10b6:a02:c3::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from MacBook-Pro-52.local (2620:10d:c090:400::5:454a) by
 BY3PR04CA0020.namprd04.prod.outlook.com (2603:10b6:a03:217::25) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.19 via Frontend
 Transport; Thu, 28 May 2020 17:06:19 +0000
X-Originating-IP: [2620:10d:c090:400::5:454a]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 278fbe6b-98ee-444c-8673-08d80329716f
X-MS-TrafficTypeDiagnostic: BYAPR15MB2901:
X-Microsoft-Antispam-PRVS: <BYAPR15MB2901B71907B4435B8A2226D8D38E0@BYAPR15MB2901.namprd15.prod.outlook.com>
X-FB-Source: Internal
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-Forefront-PRVS: 0417A3FFD2
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: j+dC+D5XnjWBEwmX69PNibEbzdzeS//UupfgsW5iCfA/4BzJjnuRqUkGNa5HHwHohkAoXBoMLYcE1YPW0rtXDlvbcTLUzGRW5/Y6WfRvV5yDmCOT5p2jN1YVg2HIs7QtrGDWpcO97bvsjaPcsaXotfRBCscT1o5W54kYrpfeNT4/62ZU3jSNOClbPCPHUt26nU1qsjmzT3lArBxk/StGoBKsYoDYy3Xp74W9AT7mc9arwuf6rBGZ+crZbz+VZDK949fixOH/kxt5JMAwel5g1kFscLIQ1d+XfmO7kNuj0+Jp07verDvZU8qz+5cMl7iXAHmHSyPiXArsOY3YxoRdid9Uk7NRr+yqqB0PTs2Bsje1+b8+MM4TG3OfmmGFfLiSBWTZxZT8wqEpQjccyQe2m5iCXlJ7oL2k/masGX0UYg7IJgpN96gfcLdDJLZN3H5Bdpu5MKliakpXCaRMqirWFy1A0YjhKrBVT7PBBMac368=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR15MB4088.namprd15.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39860400002)(136003)(376002)(346002)(396003)(366004)(316002)(66946007)(8936002)(31686004)(6486002)(8676002)(478600001)(966005)(2906002)(16526019)(7416002)(6512007)(52116002)(2616005)(186003)(6916009)(86362001)(6506007)(36756003)(31696002)(53546011)(5660300002)(66556008)(54906003)(66476007)(4326008)(21314003)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: G6TOGe79IZkCyKy+ZwRwltpLTkOoyiefOFATjdDt9FZ7qIKHS9nqr+S1nrVwldUmPloX4mp+HBXj2hgI3J/xbhqUtwKoSkvT05CNbxfUpOL74OGtKVAxQ88OSoMmbAt4K9NqBjoyu7WpTA5wIEcoWR7322cnrLoNY/qE4kHuHJfZZ4oB5AgdYW2QNQAOchYxGU8wz0EkSABXiFBN6XNS4vqIdT/yr/FtTcEkbsibQagPBgBlECWhw1zmM1mJb6zdUBm1ej2FCVkzu/rVlO9Rgu9jgulsD5qiytEa4UZ7XmqY+5dnfE5Fmh+L1nF8k4G8fHN5qM5TStZVta50kCz9BISbkmYifg2vh95yYW+cdQgb1PvqBoYygIzlhIef1CEdRzLZLuk6WTBK3WXy6rO/RIrHiM8KLFbcPMmqOn8ceTJ/f0waHhLetmujm8Y8Vl8/7iTJVgEOG5g5eqxN3xjXG564TSArKA/vMNHastVVWThWNg+FTRMW3V9o31Pjuek/Pf5gK5I6FVtyiYvZLp+ydQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 278fbe6b-98ee-444c-8673-08d80329716f
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 May 2020 17:06:20.7410 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bXZ/iBHo8JZOLnK0G2nipYyS7Q8UyWtDTAA/ELwEGBVm+PqR0S3DrFNOzm9Tmka5
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR15MB2901
X-OriginatorOrg: fb.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.687
 definitions=2020-05-28_03:2020-05-28,
 2020-05-28 signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0
 lowpriorityscore=0
 suspectscore=0 mlxlogscore=742 spamscore=0 mlxscore=0 malwarescore=0
 bulkscore=0 adultscore=0 phishscore=0 clxscore=1015 priorityscore=1501
 impostorscore=0 cotscore=-2147483648 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2004280000 definitions=main-2005280119
X-FB-Internal: deliver
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_100725_759863_42FC3F5E 
X-CRM114-Status: GOOD (  18.01  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.153.30 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [67.231.153.30 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-BeenThere: linux-um@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-um.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-um/>
List-Post: <mailto:linux-um@lists.infradead.org>
List-Help: <mailto:linux-um-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=subscribe>
Cc: linux-parisc@vger.kernel.org, Daniel Borkmann <daniel@iogearbox.net>,
 netdev@vger.kernel.org, x86@kernel.org, linux-um@lists.infradead.org,
 Alexei Starovoitov <ast@kernel.org>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Masami Hiramatsu <mhiramat@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, bpf@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org



On 5/27/20 9:39 PM, Christoph Hellwig wrote:
> On Wed, May 27, 2020 at 07:26:30PM -0700, Yonghong Song wrote:
>>> --- a/kernel/trace/bpf_trace.c~xxx
>>> +++ a/kernel/trace/bpf_trace.c
>>> @@ -588,15 +588,22 @@ BPF_CALL_5(bpf_seq_printf, struct seq_fi
>>>    		}
>>>      		if (fmt[i] == 's') {
>>> +			void *unsafe_ptr;
>>> +
>>>    			/* try our best to copy */
>>>    			if (memcpy_cnt >= MAX_SEQ_PRINTF_MAX_MEMCPY) {
>>>    				err = -E2BIG;
>>>    				goto out;
>>>    			}
>>>    -			err = strncpy_from_unsafe(bufs->buf[memcpy_cnt],
>>> -						  (void *) (long) args[fmt_cnt],
>>> -						  MAX_SEQ_PRINTF_STR_LEN);
>>> +			unsafe_ptr = (void *)(long)args[fmt_cnt];
>>> +			if ((unsigned long)unsafe_ptr < TASK_SIZE) {
>>> +				err = strncpy_from_user_nofault(
>>> +					bufs->buf[memcpy_cnt], unsafe_ptr,
>>> +					MAX_SEQ_PRINTF_STR_LEN);
>>> +			} else {
>>> +				err = -EFAULT;
>>> +			}
>>
>> This probably not right.
>> The pointer stored at args[fmt_cnt] is a kernel pointer,
>> but it could be an invalid address and we do not want to fault.
>> Not sure whether it exists or not, we should use
>> strncpy_from_kernel_nofault()?
> 
> If you know it is a kernel pointer with this series it should be
> strncpy_from_kernel_nofault.  But even before the series it should have
> been strncpy_from_unsafe_strict.

The use of strncpy_from_unsafe() mimics old bpf_trace_printk() 
implementation which just changed to _strict version:
https://lkml.org/lkml/2020/5/18/1309

Agreed that we should change to strncpy_from_unsafe_strict().
I can submit a patch for this.

Thanks!

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
